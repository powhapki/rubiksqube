#!/bin/bash
sudo sysctl -w vm.max_map_count=262144
sudo sysctl -w fs.file-max=65536
sudo docker stop sonarqube
sudo docker rm sonarqube
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes
sudo -s docker run --privileged --stop-timeout 3600 -d -p 9000:9000 --name sonarqube -v /opt/sonarqube/conf:/opt/sonarqube/conf:z -v /opt/sonarqube/extensions:/opt/sonarqube/extensions:z -v /opt/sonarqube/data:/opt/sonarqube/data:z sonarqube:7.9.1-community
sh -c 'sudo docker container logs sonarqube --follow | { sed "/SonarQube is up/ q" && kill $$ ;}'
echo -e '\e[38;5;198m'"++++ Sonarcube is being launched, please give it a minute or two and then use login details below"
echo -e '\e[38;5;198m'"++++ Sonarqube http://localhost:9000"
echo -e '\e[38;5;198m'"++++ Username: admin Password: admin"
