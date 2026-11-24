# Architecture et limites techniques

- PWA statique, sans backend ni ROM fournie. Runtime vendored EmulatorJS 4.2.3 ; les composants binaires manquants se récupèrent avec `python3 scripts/fetch-cores.py` depuis le CDN officiel, avec contrôle SHA-256.
- ROMs ajoutées par l’utilisateur stockées en IndexedDB ; états conservés lorsque le cœur expose getState/loadState. Il s’agit d’un instantané par jeu, pas des sauvegardes SRAM.
- Seuls les systèmes `playable: true` dans `web/systems.json` sont associés à un cœur compatible ; vérifier BIOS, formats et exigences de chaque cœur.
- EmulatorJS embarque Gamepad API, menu de mappage et gamepad virtuel. Le réglage OMNIA est indicatif.
- Les systèmes et cœurs exigeants peuvent nécessiter WebGL2, threads/isolation cross-origin ou une mémoire importante. Les cœurs sont chargés localement après téléchargement.
