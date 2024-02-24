#! /bin/bash

#update pkgs 
yum update

#install dependencies
yum install -y yum-utils device-mapper-persistent-data lvm2

#add docker registry
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#intsall docker-ce
yum install docker-ce -y

#start & enable docker svc
systemctl start docker 
systemctl enable docker

#verify Install
echo "Verifying Installation: \n"
docker --version

echo "\n\n<============ INSTALLING COMPOSE ========>"
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#add exec perms to docker-compose file
chmod +x /usr/local/bin/docker-compose

#verify Install
echo "Verifying Installation: \n"
docker-compose --version
