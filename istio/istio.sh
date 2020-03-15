# https://medium.com/faun/istio-step-by-step-part-10-installing-istio-1-4-in-minikube-ebce9a4e99c
# https://istio.io/docs/setup/install/istioctl/
#!/bin/bash
echo -e '\e[38;5;198m'"++++ Ensure Minikube is running.."
sudo bash /vagrant/minikube/minikube.sh
sudo DEBIAN_FRONTEND=noninteractive apt-get --assume-yes install curl unzip jq
echo -e '\e[38;5;198m'"++++ Download and Install Istio"
wget -q https://github.com/istio/istio/releases/download/1.4.3/istioctl-1.4.3-linux.tar.gz -O /tmp/istio.tar.gz
sudo tar -C /usr/local/bin/ -xzf /tmp/istio.tar.gz
echo -e '\e[38;5;198m'"++++ istioctl manifest apply --set profile=demo"
sudo istioctl manifest apply --set profile=demo
echo -e '\e[38;5;198m'"++++ sudo kubectl get svc -n istio-system"
sudo kubectl get svc -n istio-system
echo -e '\e[38;5;198m'"++++ sudo kubectl get pods -n istio-system"
sudo kubectl get pods -n istio-system
