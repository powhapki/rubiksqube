#!/bin/bash
# https://github.com/rancher/rancher/tree/master
sudo docker stop rancher
sudo docker rm rancher
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
sudo docker run -d --restart=unless-stopped \
  -p 0.0.0.0:9081:80 \
  -p 0.0.0.0:9443:443 \
  --name rancher \
  rancher/rancher
sh -c 'sudo docker logs rancher -f | { sed "/Rancher startup complete/ q" && kill $$ ;}'
echo -e '\e[38;5;198m'"++++ To use Rancher please open in your browser"
echo -e '\e[38;5;198m'"++++ https://localhost:9443"
