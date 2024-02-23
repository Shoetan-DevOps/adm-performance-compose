#! /bin/bash

script_path="$(dirname "$(readlink -f "$0")")"

echo "Configuring HASHICORP VAULT ===> ...\n"
echo "script path: $script_path"

echo "[1] Running docker compose ===> ...\n"
docker-compose -f $script_path/docker-compose.yaml up -d