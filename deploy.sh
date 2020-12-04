#!/bin/bash
source ~/env/filebrowser.env
export DOMAIN
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add filebrowser.filebrowser-data=true $NODE_ID
docker stack deploy -c filebrowser.yml filebrowser
