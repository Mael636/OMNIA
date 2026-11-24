# OMNIA-iPhone

## Limite importante de `file://`
OMNIA.html détecte le contexte fichier et affiche un avertissement. Les modules WebAssembly, l’accès fiable à IndexedDB et le service worker nécessitent un contexte HTTP(S) ; ouvrir le HTML dans Fichiers seul ne lance donc pas l’émulation.

## Sur iPhone
1. Hébergez le dossier complet sur une origine HTTPS privée (ou utilisez une application de documents avec serveur web local HTTP sur le même appareil). Aucun contenu ROM n’est livré.
2. Ouvrez l’URL dans Safari, attendez le chargement, puis Partager → **Sur l’écran d’accueil**. Le service worker met en cache l’interface et les fichiers statiques, mais les ROMs sont conservées séparément dans IndexedDB.
3. Dans un environnement de test : depuis la racine du dépôt, `python3 -m http.server 8000 --directory ios/OMNIA-iPhone` expose une version locale non HTTPS ; sur téléphone utilisez le réseau local avec pare-feu privé ; la PWA iOS demande une URL sécurisée pour l’installation fiable.

Les cœurs sont inclus localement mais Safari/iOS peut manquer de mémoire pour les systèmes exigeants ; SharedArrayBuffer/threads et certains cœurs ont des prérequis incompatibles.
