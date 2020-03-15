#!/bin/bash
# https://kubernetes.io/docs/tasks/tools/install-minikube/
# https://medium.com/@wisegain/minikube-cheat-sheet-a273385e66c9
# https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/

function minikube-install() {
    if [ -f /home/vagrant/minikube ]; then
        echo -e '\e[38;5;198m'"++++ Minicube found at /home/vagrant/minikube"
    else
        curl -sLo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
        sudo chmod +x minikube
    fi
    sudo mkdir -p /usr/local/bin/
    sudo install minikube /usr/local/bin/
    sudo minikube delete
    sudo minikube start --vm-driver=none --apiserver-name=10.9.99.10 --apiserver-ips=10.9.99.10 --extra-config=kubelet.node-ip=10.9.99.10
    sudo curl -sLO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
    sudo chmod +x kubectl
    sudo install kubectl /usr/local/bin/
    sudo nohup kubectl proxy --address="10.9.99.10" -p 10888 --disable-filter=true --accept-hosts='^*$' &
    sudo minikube update-context
    sleep 5;
    sudo nohup minikube dashboard &
    echo -e '\e[38;5;198m'"++++ sudo minikube status"
    sudo minikube status
    echo -e '\e[38;5;198m'"++++ sudo minikube service list"
    sudo minikube service list
    echo -e '\e[38;5;198m'"++++ sudo kubectl get nodes"
    sudo kubectl get nodes
    sudo kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.10
    sudo kubectl expose deployment hello-minikube --type=NodePort --port=10800
    sudo minikube service hello-minikube --url
    echo -e '\e[38;5;198m'"++++ sudo kubectl get pods"
    sudo kubectl get pods
    # https://helm.sh/docs/intro/install/#from-script
    echo -e '\e[38;5;198m'"++++ Helm not installed, installing.."
    cd /tmp
    sudo curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
    sudo chmod 700 get_helm.sh
    sudo /tmp/get_helm.sh
    cd ~/
    echo -e '\e[38;5;198m'"++++ helm version"
    sudo helm version
    # https://helm.sh/docs/intro/quickstart/#initialize-a-helm-chart-repository
    sudo helm repo add stable https://kubernetes-charts.storage.googleapis.com/
    echo -e '\e[38;5;198m'"++++ sudo helm search repo stable"
    sudo helm search repo stable
    sudo helm repo update
    sudo helm install stable/mysql --generate-name --set serviceType=NodePort
    sudo helm ls
    echo -e '\e[38;5;198m'"++++ sudo helm install redis stable/redis --set serviceType=NodePort"
    sudo helm install stable/redis --generate-name --set serviceType=NodePort
    sudo helm ls
    # https://github.com/buildkite/charts
    sudo helm repo add buildkite https://buildkite.github.io/charts/
    sudo helm repo update
    sudo helm install --name bk-agent --namespace buildkite buildkite/agent --set agent.token=""
    echo -e '\e[38;5;198m'"++++ minikube dashboard: http://10.9.99.10:10888/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/overview?namespace=default"
}

minikube-install
