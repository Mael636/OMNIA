# Architecture et limites techniques

- PWA statique, sans backend, dépendance à un CDN ni ROM fournie. Cœurs/runtime vendored EmulatorJS 4.2.3 (GPL-3.0 pour le front, licenses upstream sous `licenses/`).
- ROMs ajoutées par l’utilisateur stockées en IndexedDB ; états conservés dans IndexedDB lorsque le cœur expose `getState`/`loadState`. Il s’agit d’un instantané par jeu, et non des sauvegardes SRAM/battery memory.
- Seuls systèmes `playable: true` dans `web/systems.json` sont associés à un core EmulatorJS présent sur disque et à un identifiant EmulatorJS connu. Les autres restent listés sans fausse promesse. Vérifier les BIOS, formats, homebrew et exigences de chaque core/jeu.
- EmulatorJS embarque Gamepad API, menu de mappage et gamepad virtuel. Le petit réglage OMNIA stocke un tableau indicatif de boutons ; il ne remplace pas le mapping du core. Skin tactile OMNIA affichée sur écran tactile ; interaction encore limitée.
- Core des jeux volumineux, notamment PPSSPP, peut exiger WebGL2/threads/isolation cross-origin ou dépasser la mémoire mobile. Offline PWA : l’interface et runtime statique sont servis localement ; le premier démarrage de cœur fonctionne si les assets vendored sont complets et accessibles.
