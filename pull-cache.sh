#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Please run as root"
   exit 1
fi

FORCE_LOGIN=false
REGISTRY="registry.gitlab.com"
BASE_PATH="polytechnique-montr-al/inf3995/20223/equipe-105"
TAG="latest"
IMAGES=("inf3995-argos-simulation"
	"inf3995-backend/client"
	"inf3995-backend/server")

while [[ $# -gt 0 ]]; do
  case $1 in
    -f)
      IMAGES+=("inf3995-firmware")
      shift
      ;;
    -l)
      FORCE_LOGIN=true
      shift
      ;;
    *)
      echo "Unknown option $1"
      exit 1
      ;;
  esac
done

if $FORCE_LOGIN || ! grep --quiet $REGISTRY ~/.docker/config.json ; then
    echo "Enter Gitlab username:"
    read USER
    echo "Enter Gitlab password/token:"
    read -s PASSWORD
    
    echo $PASSWORD | docker login -u $USER --password-stdin $REGISTRY
    
    if ! [ $? -eq 0 ] ; then
       echo "Login failed"
       exit 1
    fi
else
    echo "Already logged in $REGISTRY"
fi

printf "\n----------------------\nNow pulling ${#IMAGES[@]} images:\n----------------------\n"

for IMAGE in "${IMAGES[@]}"
do
    docker pull "$REGISTRY/$BASE_PATH/$IMAGE:$TAG"
done
