# Notes techniques OMNIA

- PWA statique en français, bibliothèque locale IndexedDB.
- Catalogue de 79 systèmes avec statut de disponibilité ; ne pas confondre entrée au catalogue et émulation jouable.
- EmulatorJS 4.2.3, cœurs WASM à récupérer dans la distribution source complète ; aucun BIOS ni ROM fourni.
- iPhone : servir via HTTP(S), puis Safari → Partager → Ajouter à l’écran d’accueil. `file://` ne permet pas de lancer les cœurs WASM.
- Windows : application Electron avec cible NSIS. Un exécutable n’est pas inclus dans ce commit.
- Licences runtime/cœurs distinctes ; consulter les notices upstream avant redistribution.