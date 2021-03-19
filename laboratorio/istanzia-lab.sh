#!/bin/sh
docker-compose up -d
sleep 10
docker-compose exec studente1 /bin/bash -c "apt-get update && apt-get -y install nano"