# Documentation du firmware

## Communication
La communication de commandes est faite en envoyant des paquets contenant un int représentant l'ID de
la commande à exécuter. Cette commande est reçue dans controller.c et est ensuite décodée à l'aide de
la fonction receiveCommand.

## Commandes disponibles
### Identify
Lorsque cette commande est envoyée au drone, sa LED rouge clignote pendant 5 secondes. 
