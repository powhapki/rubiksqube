#!/bin/bash
# https://github.com/ybalt/ansible-tower
sudo docker stop ansible-tower
sudo docker rm ansible-tower
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes

sudo docker run --privileged -d -p 5443:443 --name ansible-tower ybalt/ansible-tower

echo -e '\e[38;5;198m'"++++ Ansible-Tower http://localhost:5443"
