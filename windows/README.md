# OMNIA pour Windows

Projet Electron + electron-builder (NSIS). Depuis la racine du projet : `python scripts/fetch-cores.py`, puis `cd windows && npm install && npm run dist`. Le workflow GitHub Actions télécharge et vérifie les composants EmulatorJS 4.2.3 avant de produire l’installateur et de l’attacher à la Release du tag.
