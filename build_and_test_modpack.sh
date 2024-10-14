#!/bin/bash

cd packwiz
packwiz mr export --output /tmp/pack.mrpack

cd ..
docker compose run --rm -p 25565:25565 -e MODRINTH_MODPACK=/pack.mrpack -v /tmp/pack.mrpack:/pack.mrpack mc
