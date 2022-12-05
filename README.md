# INF3995 Projet 3 A22 - Équipe 105

Ce dépôt inclut tous les répertoires de code de l'équipe 105.

Ceci inclut :
- [Simulation](simulation/README.md) : La simulation Argos.
- [Backend](backend/README.md) : L'interface web et le serveur de la base au sol.
- [Firmware](firmware/README.md) : Le programme embarqué des drones.

## Comment démarrer le projet

### Prérequis
- docker 
- docker compose

### Procédure
1. Cloner les submodules avec les commandes ci-dessous :
```bash
git submodule update --init --recursive --jobs 4
```
2. Aller voir la [documentation](firmware/README.md) du répertoire micrologiciel afin de compiler le code et flasher les drones.
3. Dans INF3995-105, utiliser la commande suivante pour lancer les modules :
```bash
export IS_SIMULATION= # True (mode simulation) ou False (mode drone)
docker-compose up
```
>  À noter qu'il est important de spécifier le mode à utiliser à l'aide de la variable d'environnement ``IS_SIMULATION``.

4. Se connecter à l'interface web sur votre navigateur à :
- Station au sol : http://localhost:5000
- Argos - Webviz : http://localhost:8080

## Formatage et linting

L'infomation lié au formatage est spécifié dans la documentation présente à la racine de chaque module.

De façon générale, les standards suivants sont utilisés :

**Python** : 

- Le formatage est exécuté à l'aide de [*black*](https://github.com/psf/black) qui suit le
standard [**PEP8**](https://peps.python.org/pep-0008/).


**Typescript / Angular** :

- Le formatage est exécuté à l'aide d'[*eslint*](https://eslint.org/) qui suit les standards suivants :
  - [angular-eslint/recommended](https://github.com/angular-eslint/angular-eslint)
  - [prettier/recommended](https://github.com/prettier/eslint-plugin-prettier)


**C / Cpp** :

- Le formatage est exécuté à l'aide de [*clang-format*](https://clang.llvm.org/docs/ClangFormat.html) qui suit le
standard [**LLVM**](https://llvm.org/docs/CodingStandards.html).



