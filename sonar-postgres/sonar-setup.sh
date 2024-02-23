#! /bin/bash

script_path="$(dirname "$(readlink -f "$0")")"

echo "Configuring Sonar ===> ...\n"
echo "script path: $script_path"

echo "Increase max map count for Elastic Search: "
echo vm.max_map_count=262144 >> /etc/sysctl.conf
sudo sysctl -p

echo "[1] Running docker compose ===> ...\n"
docker-compose -f $script_path/docker-compose.yaml up -d