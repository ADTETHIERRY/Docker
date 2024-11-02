#!/bin/bash
source param.env
# Recherche du conteneur écoutant sur le port 80
container_id=$(docker ps -aqf "name=$CONTAINER_NAME" -q)

# Vérifie si un conteneur a été trouvé
if [ -n "$container_id" ]; then
    # Arrêt et suppression du conteneur
    docker stop $container_id
    docker rm $container_id
    echo "Conteneur $CONTAINER_NAME écoutant sur le port $PORT supprimé avec succès."
    
else
    echo "Aucun conteneur écoutant sur le port 80 n'a été trouvé."
fi
echo "Conteneur $CONTAINER_NAME relancé avec succès"
docker run -d -p $PORT:80 --name $CONTAINER_NAME nginx
