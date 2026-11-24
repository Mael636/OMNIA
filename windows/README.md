# OMNIA pour Windows

Projet Electron + electron-builder (NSIS) prêt à construire sur Windows. Depuis ce dossier : `npm install`, puis `npm run dist`. Le job GitHub Actions `build-windows.yml` produit et publie l’installateur NSIS comme artefact. Aucun `.exe` n’a été construit dans le bac Linux : npm y est défectueux et Wine n’est pas configuré.
