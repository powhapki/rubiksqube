# HashiQube Overview
HashiQube is a VM with a Docker daemon inside. It runs all HashiCorp products. __Vault, Terraform, Nomad, Consul, Vagrant, Packer and Sentinel.__
It also runs a host of other popular Open Source DevOps / DevSecOps applications showcasing how simple integration with HashiCorp products can result in tangible learnings and benefits for all its users
Once the Qube is up an internet connection is no longer needed meaning sales pitches and demos for potential and existing customers is greatly aided.

## HashiQube runs all HashiCorp's products
![HashiQube](images/thestack.png?raw=true "HashiQube")

## Purpose
HashiQube has been created to enable anyone who is interested in secure automation pipelines the ability to run a suite of ‘best in class’ tools their local machines at the cost of a small amount of system resources.
The Qube gives all interested parties the empowerment  to  deploy these tools in a way covers multiple use cases effectively providing a ‘concept to completion’ test bed using open source HashiCorp products.
The original use case was born the desire to demystify DevSecOps utilising Terraform, Vault, Consul, Sentinel and Nomad as well as some other well know open source CI/CD tools by providing a ‘hands-on’ environment that demonstrates the value of secret and credential management in standard software development pipeline.

Thanks to the flexibility of the HashiCorp products there is no need wonder how to achieve the goals of bringing software to market in a more secure and timely fashion, just Vagrant up!

## Instructions
* Please download __Virtualbox__ from https://www.virtualbox.org/wiki/Downloads and __Vagrant__ from https://www.vagrantup.com/downloads.html and install
* Using `git` - clone this repo `git clone $repo .` [__What is Git?__](git/#git)
* Inside the local repo folder, do `vagrant up --provision` - This will setup, Vault, Nomad, Consul, Terraform, Localstack and Docker as well as giving you access the docsify website at http://localhost:3333
* To run a specific service you want to use run the declarative command for it, for example, `vagrant up --provision-with minikube`
* Open in your browser http://localhost:3333 for Documentation

## Pre-requisites
* 10GB of disk space
* 4GB RAM
* Admin rights / sudo (you will be asked to update ETC Host file)
* Virtualbox
* Vagrant
* `vagrant up --provision`

## Additional Information
This repository is designed to provide you with a stack that demonstrates the power of HashiCorp's product suite with non-enterprise editions of the following software;
* [__Vagrant__](hashicorp/#vagrant) - Development Environments Made Easy
* [__Vault__](hashicorp/#vault) - Manage Secrets and Protect Sensitive Data
* [__Consul__](hashicorp/#consul) - Secure Service Networking
* [__Nomad__](hashicorp/#nomad) - Deploy and Manage Any Containerized, Legacy, or Batch Application
* [__Terraform__](hashicorp/#terraform) - Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service
* [__Packer__](hashicorp/#packer) - Build Automated Machine Images
* [__Sentinel__](hashicorp/#sentinel) - Sentinel is an embedded policy-as-code framework
* [__Fabio__](hashicorp/#fabio-load-balancer) - Fabio is an HTTP and TCP reverse proxy that configures itself with data from Consul
* [__Docker__](docker/#docker) - Securely build, share and run any application, anywhere
* [__Localstack__](localstack/#localstack) - A fully functional local AWS cloud stack
* [__Ansible__](ansible/#ansible) - Automation for everyone
* [__LDAP__](ldap/#ldap) - Lightweight Directory Access Protocol
* [__Jenkins__](jenkins/#jenkins) - The leading open source automation server
* [__Snyk__](#) - Develop fast, Stay secure
* [__Sonarqube__](sonarqube/#sonarqube) - Code Quality and Security
* [__Oracle MySQL__](database/#oracle-mysql) - MySQL is an open-source relational database management system (RDBMS)
* [__Microsoft MSSQL__](database/#microsoft-sql-mssql-express) - Microsoft SQL Server is a relational database management system developed by Microsoft
* [__Portainer__](portainer/#portainer) - Making Docker management easy
* [__Minikube__](minikube/#minikube) - Run Kubernetes locally
* [__Istio__](istio/#istio) - Connect, secure, control, and observe services
* [__Docsify__](docsify/#docsify) - A magical documentation site generator
* [__Mermaid__](mermaid/#mermaid) - Generation of diagram and flowchart from text in a similar manner as markdown
* [__Prometheus__](prometheus-grafana/#prometheus-and-grafana) - Open-source monitoring system with dimensional data model, flexible query language, efficient time series database & modern alerting
* [__Grafana__](prometheus-grafana/#prometheus-and-grafana) - Grafana is the open source analytics & monitoring solution for every database
* [__Elasticsearch__](elasticsearch-kibana-cerebro/#elasticsearch-kibana-and-cerebro) - Elasticsearch is a search engine based on the Lucene library
* [__Kibana__](elasticsearch-kibana-cerebro/#elasticsearch-kibana-and-cerebro) - Kibana is an open source data visualization dashboard for Elasticsearch
* [__Cerebro__](elasticsearch-kibana-cerebro/#elasticsearch-kibana-and-cerebro) - Cerebro is the evolution of the previous Elasticsearch plugin Elasticsearch kopf
* [__Blast-Radius__](blastradius/#blast-radius) - Blast Radius is a tool for reasoning about Terraform dependency graphs with interactive visualizations
* [__Ansible-Tower__](ansible-tower/#ansible-tower) - Red Hat Ansible Tower
* [__Snyk__](snyk/#snyk) - Develop fast. Stay secure
* [__Gitlab__](gitlab/#gitlab) - GitLab is a complete DevOps platform, delivered as a single application
* [__Nginx__](nginx/#nginx) - Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols and a web server (origin server)

Once the stack is up you will have a large number of services running and available on `localhost` <br />
For Documentation please open http://localhost:3333 in your browser

## Hashicorp basic usage
* Vault http://localhost:8200
* Nomad http://localhost:4646
* Consul http://localhost:8500
* Localstack http://localhost:8080
* Terraform Enterprise (enterprise needs a licence) http://localhost:8800

## HashiQube runs all HashiCorp's products
![HashiQube](images/hashicorp_products.png?raw=true "HashiQube")

## Other
* LDAP can be accessed on ldap://localhost:389
* Localstack web http://localhost:8080
* Ansible provisioning Apache2 http://localhost:8888
* Jenkins http://localhost:8088
* SonarQube http://localhost:9000
* Elasticsearch http://localhost:9200
* Kibana http://localhost:5601
* Cerebro http://localhost:5602
* Oracle MySQL localhost:3306
* Microsoft SQL localhost:1433
* Portainer http://localhost:9333
* Minikube http://10.9.99.10:10888/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/overview?namespace=default

### Vagrant Basic Usage
* vagrant up --provision OR vagrant up --provision-with bootstrap|nomad|consul|vault|docker|ldap
* vagrant global-status # to see which VMs are active
* vagrant global-status --prune # to remove stale VMs from Vagrant cache
* vagrant status # vagrant status
* vagrant reload
* vagrant up
* vagrant destroy
* vagrant provision
* vagrant plugin list

### Docker Basic Usage
* docker image ls
* docker ps
* docker stop

### Hostnames and DNS can  be faked via /etc/hosts

```
==> user.local.dev: [vagrant-hostsupdater] Checking for host entries
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 consul-user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 vault-user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 nomad-user.local.dev
==> user.local.dev: Setting hostname...
```

## To investigate
### CI/CD
    Gatling: (load testing) https://gatling.io/open-source
    Spinnaker for multi-cloud / multi swim lane CD tool: https://www.spinnaker.io/concepts/
    Build agent showing code clean and dirty.
        Java
        Python
        JavaScript

### Monitoring / Dash-boarding
    Hygiea dashboard: https://github.com/Hygieia/Hygieia
    Prometheus and Grafana for monitoring and logging: https://prometheus.io/docs/visualization/grafana/
    Alerting will be handled by a local docker messaging server such as Gotify: https://github.com/gotify/server

### Containerisation and API’s
    Gloo: https://docs.solo.io/gloo/latest/introduction/

## Support & Feedback
For suggestions, feedback and queries please branch or and submit a Pull Request or directly contact the architects of the HashiQube via email:

Lead Automation Architect [riaan.nolan@servian.com](mailto:riaan.nolan@servian.com)

## Contributors and Special mentions
A Very special mention to HashiQube's contributors, Thank You All for your help, suggestions and contributions no matter how small <3
 - Konstantin Vanyushov
 - Tristan Morgan

## License
HashiQube is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
