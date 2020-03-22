#!/bin/bash
# https://docs.gitlab.com/omnibus/docker/
sudo docker stop gitlab
sudo docker rm gitlab
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
sudo docker run --detach \
--hostname 10.9.99.10 \
--publish 0.0.0.0:5543:443 --publish 0.0.0.0:5580:80 --publish 0.0.0.0:5522:22 \
--name gitlab \
--restart always \
gitlab/gitlab-ce:latest
sh -c 'sudo docker logs gitlab -f | { sed "/Administrator account created/ q" && kill $$ ;}'
echo -e '\e[38;5;198m'"++++ To use Gitlab please open in your browser"
echo -e '\e[38;5;198m'"++++ http://10.9.99.10:5580"
