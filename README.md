# OMNIA

**Bibliothèque locale multi-systèmes, sobre et respectueuse de vos fichiers.** OMNIA est une application web progressive (PWA), un dossier iPhone autonome et une application Windows Electron. Les ROMs ne sont ni fournies ni téléchargées ; votre bibliothèque reste dans le stockage navigateur local.

## Démarrage web

```sh
python3 scripts/fetch-cores.py
python3 -m http.server 8000 --directory web
# ouvrir http://localhost:8000
```

Le script récupère les composants EmulatorJS 4.2.3 manquants depuis son CDN officiel et vérifie leur taille et empreinte SHA-256, selon `scripts/cores-manifest.json`. Pour les lancer sans Python, utilisez `scripts/fetch-cores.sh` (Linux/macOS) ou `scripts/fetch-cores.ps1` (Windows avec Python 3 installé).

Importez uniquement des copies de jeux dont vous détenez les droits. Les fichiers importés restent dans IndexedDB de cette origine et de ce navigateur ; effacer les données du site supprime la bibliothèque et les états de sauvegarde. La PWA met en cache l’interface statique.

## Catalogue et émulation

Le catalogue de 79 systèmes et les informations de support sont dans [`web/systems.json`](web/systems.json). La liste des cœurs et composants EmulatorJS requis est vérifiable dans `scripts/cores-manifest.json`. Les composants binaires (cœurs WASM/données et archive PSP) ne sont pas versionnés dans Git : lancez le téléchargeur avant de démarrer l’émulation ou de construire l’application Windows. Le runtime EmulatorJS, ses sources et les ressources textuelles nécessaires sont dans `web/vendor/emulator/data/`.

Le catalogue distingue les systèmes disponibles, partiels et non pris en charge ; la présence d’une association ne garantit pas la compatibilité de chaque jeu, performance, BIOS ou matériel. Wii U, Switch, 3DS, PS2/3/4/5, Vita, Xbox/360 et autres systèmes sans cœur compatible ne sont pas annoncés comme jouables. BIOS propriétaires ne sont pas inclus. Les états proposés dépendent du support exposé par chaque cœur et ne remplacent pas les sauvegardes natives du jeu.

## Applications

- `web/` — application PWA, interface, catalogue et runtime.
- `ios/OMNIA-iPhone/` — dossier autonome pour iPhone. En raison des restrictions WASM de `file://`, servez-le sur HTTP(S), puis dans Safari choisissez **Partager → Ajouter à l’écran d’accueil**. Voir son README.
- `windows/` — application Electron et configuration NSIS. Depuis la racine : `python scripts/fetch-cores.py`, puis `cd windows && npm install && npm run dist`. L’installeur est généré dans `windows/dist/`. Le workflow `.github/workflows/build-windows.yml` télécharge les cœurs avant `electron-builder`, construit l’installeur Windows sur les tags `v*` et l’ajoute à la Release.
- `docs/` — informations techniques.

## Licence et sécurité

Le code OMNIA est sous licence MIT. EmulatorJS est sous GPL-3.0 ; la licence upstream est fournie dans `licenses/EmulatorJS-LICENSE.txt`. Les cœurs ont leurs propres licences et notices : consultez celles des composants upstream avant toute redistribution, notamment commerciale. Aucun firmware/BIOS ni ROM n’est inclus. Les données de bibliothèque ne sont pas chiffrées par OMNIA.
