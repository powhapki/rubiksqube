#!/bin/bash
# https://prometheus.io/docs/visualization/grafana/#using
sudo docker stop grafana prometheus
sudo docker rm grafana prometheus
yes | sudo docker system prune -a
yes | sudo docker system prune --volumes

sudo docker run --privileged -d -p 3000:3000 --name grafana -e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource,grafana-kubernetes-app" -v /vagrant/prometheus-grafana/grafana/conf/:/etc/grafana/ grafana/grafana
sudo docker run --privileged -d -p 9090:9090 --name prometheus prom/prometheus
sudo docker cp /vagrant/prometheus-grafana/prometheus.yml prometheus:/etc/prometheus/
sudo docker restart prometheus
echo -e '\e[38;5;198m'"++++ Prometheus http://localhost:9090"
echo -e '\e[38;5;198m'"++++ Grafana http://localhost:3000"
