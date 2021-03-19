#!/bin/sh
docker-compose up -d
sleep 10
docker-compose exec studente1 /bin/bash -c "apt clean && apt update && apt upgrade -y && apt install dsniff -y"