// Sube un archivo a una carpeta de Google Drive con la API de Drive (subida reanudable, vale para MP4 grandes).
// Credenciales OAuth de la cuenta de la academia en variables de entorno del entorno cloud:
//   GDRIVE_CLIENT_ID, GDRIVE_CLIENT_SECRET, GDRIVE_REFRESH_TOKEN
//
//   node pregunta-del-dia/subir-drive.mjs <archivo> <id-carpeta-drive>
import { readFileSync, statSync } from "node:fs";
import { basename } from "node:path";

const [archivo, carpeta] = process.argv.slice(2);
const { GDRIVE_CLIENT_ID, GDRIVE_CLIENT_SECRET, GDRIVE_REFRESH_TOKEN } = process.env;
if (!archivo || !carpeta) {
  console.error("Uso: node pregunta-del-dia/subir-drive.mjs <archivo> <id-carpeta-drive>");
  process.exit(1);
}
if (!GDRIVE_CLIENT_ID || !GDRIVE_CLIENT_SECRET || !GDRIVE_REFRESH_TOKEN) {
  console.error("Faltan GDRIVE_CLIENT_ID, GDRIVE_CLIENT_SECRET o GDRIVE_REFRESH_TOKEN en el entorno.");
  process.exit(2);
}

const token = await fetch("https://oauth2.googleapis.com/token", {
  method: "POST",
  headers: { "Content-Type": "application/x-www-form-urlencoded" },
  body: new URLSearchParams({
    client_id: GDRIVE_CLIENT_ID,
    client_secret: GDRIVE_CLIENT_SECRET,
    refresh_token: GDRIVE_REFRESH_TOKEN,
    grant_type: "refresh_token",
  }),
}).then(async (r) => {
  if (!r.ok) throw new Error(`Token: ${r.status} ${await r.text()}`);
  return (await r.json()).access_token;
});

const tipo = archivo.endsWith(".mp4") ? "video/mp4" : archivo.endsWith(".png") ? "image/png" : "text/plain";
const inicio = await fetch("https://www.googleapis.com/upload/drive/v3/files?uploadType=resumable&supportsAllDrives=true", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${token}`,
    "Content-Type": "application/json; charset=UTF-8",
    "X-Upload-Content-Type": tipo,
    "X-Upload-Content-Length": String(statSync(archivo).size),
  },
  body: JSON.stringify({ name: basename(archivo), parents: [carpeta] }),
});
if (!inicio.ok) throw new Error(`Inicio de subida: ${inicio.status} ${await inicio.text()}`);

const subida = await fetch(inicio.headers.get("location"), {
  method: "PUT",
  headers: { "Content-Type": tipo },
  body: readFileSync(archivo),
});
if (!subida.ok) throw new Error(`Subida: ${subida.status} ${await subida.text()}`);
const { id, name } = await subida.json();
console.log(`✓ Subido a Drive: ${name} (https://drive.google.com/file/d/${id}/view)`);
