# Rancher

Rancher is open source software that combines everything an organization needs to adopt and run containers in production. Built on Kubernetes, Rancher makes it easy for DevOps teams to test, deploy and manage their applications.

Rancher in HashiQube quickly spin up a Rancher instance in Docker container for development/evaluation purposes.   

# Rancher usage

To provision Rancher in HashiQube, run `vagrant up --provision-with rancher`

Open Rancher when it is ready. `https://localhost:9443`. Setup Administrator account with admin password.

![Rancher - Get Started](images/rancher-getstarted.png?raw=true "Rancher - Get Started")

View Cluster

![Rancher - View Cluster](images/rancher-addcluster.png?raw=true "Rancher - View Cluster")

Add Cluster

![Rancher - View Cluster](images/rancher-addclusterwith.png?raw=true "Rancher - View Cluster")

BUGS:

__When importing existing minikube cluster, state remains pending__
```
vagrant@hashiqube0:~$ docker logs 747193feef0a
INFO: Environment: CATTLE_ADDRESS=10.0.2.15 CATTLE_AGENT_CONNECT=true CATTLE_CA_CHECKSUM=67a2386a646fde50292c1250465fe1237d229f1578b73b9235516b6ca460bfc1 CATTLE_CLUSTER=false CATTLE_INTERNAL_ADDRESS= CATTLE_K8S_MANAGED=true CATTLE_NODE_NAME=hashiqube0 CATTLE_SERVER=https://hashiqube0.service.consul:9443
INFO: Using resolv.conf: nameserver 8.8.8.8
INFO: https://hashiqube0.service.consul:9443/ping is accessible
INFO: hashiqube0.service.consul resolves to 10.9.99.10
INFO: Value from https://hashiqube0.service.consul:9443/v3/settings/cacerts is an x509 certificate
time="2020-04-08T04:50:56Z" level=info msg="Rancher agent version v2.4.2 is starting"
time="2020-04-08T04:50:56Z" level=info msg="Option customConfig=map[address:10.0.2.15 internalAddress: label:map[] roles:[] taints:[]]"
time="2020-04-08T04:50:56Z" level=info msg="Option etcd=false"
time="2020-04-08T04:50:56Z" level=info msg="Listening on /tmp/log.sock"
time="2020-04-08T04:50:56Z" level=info msg="Option controlPlane=false"
time="2020-04-08T04:50:56Z" level=info msg="Option worker=false"
time="2020-04-08T04:50:56Z" level=info msg="Option requestedHostname=hashiqube0"
time="2020-04-08T04:50:56Z" level=info msg="Connecting to wss://hashiqube0.service.consul:9443/v3/connect with token x2xkfq6qnb2rfwdv6fvhkfdtfvj5g866llp8khtjpt6pxtn7hl85vm"
time="2020-04-08T04:50:56Z" level=info msg="Connecting to proxy" url="wss://hashiqube0.service.consul:9443/v3/connect"
time="2020-04-08T04:50:56Z" level=error msg="Failed to connect to proxy. Response status: 200 - 200 OK. Response body: node.management.cattle.io \"c-vt6rg/m-242f206c8cb4\" not found" error="websocket: bad handshake"
time="2020-04-08T04:50:56Z" level=error msg="Remotedialer proxy error" error="websocket: bad handshake"
time="2020-04-08T04:51:06Z" level=info msg="Connecting to wss://hashiqube0.service.consul:9443/v3/connect with token x2xkfq6qnb2rfwdv6fvhkfdtfvj5g866llp8khtjpt6pxtn7hl85vm"

https://github.com/rancher/rancher/issues/16454
Rancher Cattle Cluster Agent Could not Resolve Host · Issue #16454 · rancher/rancher
Rancher Cattle Cluster Agent Could not Resolve Host · Issue #16454 · rancher/rancher

Workaround
Changed the dnsPolicy from the cattle-cluster-agent deployment:
From: dnsPolicy: ClusterFirst
To: dnsPolicy: Default

Method: kubectl -n cattle-system edit deployment cattle-cluster-agent
```
__error="websocket: bad handshake"__
```
vagrant@hashiqube0:~$ docker logs 747193feef0a
INFO: Environment: CATTLE_ADDRESS=10.0.2.15 CATTLE_AGENT_CONNECT=true CATTLE_CA_CHECKSUM=67a2386a646fde50292c1250465fe1237d229f1578b73b9235516b6ca460bfc1 CATTLE_CLUSTER=false CATTLE_INTERNAL_ADDRESS= CATTLE_K8S_MANAGED=true CATTLE_NODE_NAME=hashiqube0 CATTLE_SERVER=https://hashiqube0.service.consul:9443
INFO: Using resolv.conf: nameserver 8.8.8.8
INFO: https://hashiqube0.service.consul:9443/ping is accessible
INFO: hashiqube0.service.consul resolves to 10.9.99.10
INFO: Value from https://hashiqube0.service.consul:9443/v3/settings/cacerts is an x509 certificate
time="2020-04-08T04:50:56Z" level=info msg="Rancher agent version v2.4.2 is starting"
time="2020-04-08T04:50:56Z" level=info msg="Option customConfig=map[address:10.0.2.15 internalAddress: label:map[] roles:[] taints:[]]"
time="2020-04-08T04:50:56Z" level=info msg="Option etcd=false"
time="2020-04-08T04:50:56Z" level=info msg="Listening on /tmp/log.sock"
time="2020-04-08T04:50:56Z" level=info msg="Option controlPlane=false"
time="2020-04-08T04:50:56Z" level=info msg="Option worker=false"
time="2020-04-08T04:50:56Z" level=info msg="Option requestedHostname=hashiqube0"
time="2020-04-08T04:50:56Z" level=info msg="Connecting to wss://hashiqube0.service.consul:9443/v3/connect with token x2xkfq6qnb2rfwdv6fvhkfdtfvj5g866llp8khtjpt6pxtn7hl85vm"
time="2020-04-08T04:50:56Z" level=info msg="Connecting to proxy" url="wss://hashiqube0.service.consul:9443/v3/connect"
time="2020-04-08T04:50:56Z" level=error msg="Failed to connect to proxy. Response status: 200 - 200 OK. Response body: node.management.cattle.io \"c-vt6rg/m-242f206c8cb4\" not found" error="websocket: bad handshake"
time="2020-04-08T04:50:56Z" level=error msg="Remotedialer proxy error" error="websocket: bad handshake"
time="2020-04-08T04:51:06Z" level=info msg="Connecting to wss://hashiqube0.service.consul:9443/v3/connect with token x2xkfq6qnb2rfwdv6fvhkfdtfvj5g866llp8khtjpt6pxtn7hl85vm"
```




