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
git submodule update --init --recursive --jobs 4
```
2. Aller voir la documentation du répertoire firmware afin de compiler le code et flasher les drones
3. Dans INF3995-105, utiliser la commande suivante pour lancer les modules :
```bash
export IS_SIMULATION= # True ou False selon le mode désiré
docker-compose up
```
À noter qu'il est important de spécifier le mode à utiliser à l'aide de la variable d'environnement IS_SIMULATION

4. Se connecter à l'interface web sur votre navigateur à localhost:5000

