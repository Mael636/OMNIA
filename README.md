# OMNIA

Bibliothèque locale multi-systèmes en français : PWA sobre, stockage IndexedDB, catalogue de 79 systèmes, EmulatorJS 4.2.3, application Windows Electron/NSIS et dossier iPhone. Aucun BIOS ni ROM n'est fourni.

## Source et assets

Les archives de livraison complètes sont `OMNIA-repo.zip` et `OMNIA-iPhone.zip` dans les sorties de la tâche. Le dépôt GitHub ne contient pas encore ces archives ni le code complet. Les cœurs EmulatorJS sont volumineux et doivent être récupérés séparément avant exécution ; vérifier provenance et licences upstream. La version locale inclut un script de téléchargement avec manifeste SHA-256.

## Documentation

- `docs/TECHNICAL.md` — état des systèmes et notes de compatibilité.
- `windows/README.md` — construction Electron/NSIS.
- `ios/OMNIA-iPhone/README.md` — utilisation sur iPhone.

Le statut des systèmes et la compatibilité varient selon le cœur, le jeu, les BIOS et l'appareil. Les données de la bibliothèque sont locales au navigateur.