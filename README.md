# INF3995 Swarm project

Ce dépot inclut tous les répertoires de code de l'équipe 105

Ceci inclus:
- simulation: La simulation Argos
- backend: L'interface web et le serveur de la base au sol
- firmware: Le programme embarqué des drones

## Comment démarrer le projet

### Prérequis
- Docker 
- Docker-compose
- make

### Procédure
1. Cloner les submodules avec les commandes ci-dessous:
```bash
git submodule init
git submodule update --recursive --jobs 3
```
2. Aller voir la documentation du répertoire firmware afin de compiler le code et flasher les drones
3. (Optionnel) Lancer le script ``pull-cache.sh`` afin de tirer des images préexistantes (l'option ``-f`` permet d'ajouter l'image du firmware) des modules et ainsi grandement diminuer le temps de compilation
4. Dans INF3995-105, utiliser la commande suivante pour lancer les modules:
```bash
docker-compose up
```
5. Se connecter à l'interface web sur votre navigateur à localhost:5000

