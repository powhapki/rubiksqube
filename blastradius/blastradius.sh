#!/bin/bash
# https://github.com/28mm/blast-radius

sudo docker stop blastradius
sudo docker rm blastradius
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
cd /vagrant/blastradius
echo -e '\e[38;5;198m'"++++ docker build -t blastradius ."
sudo docker build -t blastradius .
echo -e '\e[38;5;198m'"++++ docker images --filter reference=blastradius"
sudo docker images --filter reference=blastradius
sudo rm -rf /vagrant/localstack/*.tfstate*
sudo rm -rf /vagrant/localstack/.terraform
sudo docker run --name blastradius -p 0.0.0.0:5000:5000 -v /vagrant/localstack/:/data-rw --cap-add=SYS_ADMIN -d blastradius --serve /data-rw
echo -e '\e[38;5;198m'"++++ Blast-Radius: http://localhost:5000/"
