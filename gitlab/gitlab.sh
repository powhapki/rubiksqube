#!/bin/bash
# https://docs.gitlab.com/omnibus/docker/
sudo docker stop gitlab
sudo docker rm gitlab
sudo docker stop gitlab-runner
sudo docker rm gitlab-runner
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
sudo docker run --detach \
--hostname 10.9.99.10 \
--publish 0.0.0.0:5543:443 --publish 0.0.0.0:5580:80 --publish 0.0.0.0:5522:22 \
--name gitlab \
--restart always \
gitlab/gitlab-ce:latest
sudo docker run -d --name gitlab-runner --restart always \
-v /var/run/docker.sock:/var/run/docker.sock \
gitlab/gitlab-runner:latest
sh -c 'sudo docker logs gitlab -f | { sed "/Administrator account created/ q" && kill $$ ;}'
echo -e '\e[38;5;198m'"++++ To use Gitlab please open in your browser"
echo -e '\e[38;5;198m'"++++ http://10.9.99.10:5580"
