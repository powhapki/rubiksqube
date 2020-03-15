### SonarQube

![SonarQube](images/sonarqube.png?raw=true "SonarQube")
`vagrant up --provision-with sonarqube`
```
Bringing machine 'user.local.dev' up with 'virtualbox' provider...
==> user.local.dev: Checking if box 'ubuntu/xenial64' version '20190918.0.0' is up to date...
==> user.local.dev: A newer version of the box 'ubuntu/xenial64' for provider 'virtualbox' is
==> user.local.dev: available! You currently have version '20190918.0.0'. The latest is version
==> user.local.dev: '20191113.0.0'. Run `vagrant box update` to update.
==> user.local.dev: [vagrant-hostsupdater] Checking for host entries
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 user.local.dev
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 hashicorp.local.dev
==> user.local.dev: Running provisioner: sonarqube (shell)...
    user.local.dev: Running: /var/folders/7j/gsrjvmds05n53ddg28krf4_80001p9/T/vagrant-shell20191114-11286-14lrn09.sh
    user.local.dev: vm.max_map_count = 262144
    user.local.dev: fs.file-max = 65536
    user.local.dev: Error response from daemon: No such container: sonarqube
    user.local.dev: Error: No such container: sonarqube
    user.local.dev: WARNING! This will remove:
    user.local.dev:   - all stopped containers
    user.local.dev:   - all networks not used by at least one container
    user.local.dev:   - all volumes not used by at least one container
    user.local.dev:   - all dangling images
    user.local.dev:   - all dangling build cache
    user.local.dev:
    user.local.dev: Are you sure you want to continue? [y/N]
    user.local.dev: Total reclaimed space: 0B
    user.local.dev: Unable to find image 'sonarqube:latest' locally
    user.local.dev: latest: Pulling from library/sonarqube
    user.local.dev: 8d691f585fa8: Pulling fs layer
    user.local.dev: 3da6fe7ff2ef: Pulling fs layer
    user.local.dev: e22147996cc0: Pulling fs layer
    user.local.dev: 8df48a2d4467: Pulling fs layer
    user.local.dev: 06eb74af83c0: Pulling fs layer
    user.local.dev: a642409dc81e: Pulling fs layer
    user.local.dev: 778617ae58c7: Pulling fs layer
    user.local.dev: 78e3d611ddbb: Pulling fs layer
    user.local.dev: ec0d78b01f70: Pulling fs layer
    user.local.dev: 8df48a2d4467: Waiting
    user.local.dev: 06eb74af83c0: Waiting
    user.local.dev: a642409dc81e: Waiting
    user.local.dev: 778617ae58c7: Waiting
    user.local.dev: 78e3d611ddbb: Waiting
    user.local.dev: ec0d78b01f70: Waiting
    user.local.dev: e22147996cc0: Verifying Checksum
    user.local.dev: e22147996cc0: Download complete
    user.local.dev: 3da6fe7ff2ef: Verifying Checksum
    user.local.dev: 3da6fe7ff2ef: Download complete
    user.local.dev: 06eb74af83c0: Verifying Checksum
    user.local.dev: 06eb74af83c0: Download complete
    user.local.dev: 8d691f585fa8: Verifying Checksum
    user.local.dev: 8d691f585fa8: Download complete
    user.local.dev: a642409dc81e: Verifying Checksum
    user.local.dev: a642409dc81e: Download complete
    user.local.dev: 778617ae58c7: Verifying Checksum
    user.local.dev: 778617ae58c7: Download complete
    user.local.dev: 8d691f585fa8: Pull complete
    user.local.dev: 3da6fe7ff2ef: Pull complete
    user.local.dev: e22147996cc0: Pull complete
    user.local.dev: ec0d78b01f70:
    user.local.dev: Verifying Checksum
    user.local.dev: ec0d78b01f70:
    user.local.dev: Download complete
    user.local.dev: 8df48a2d4467:
    user.local.dev: Verifying Checksum
    user.local.dev: 8df48a2d4467:
    user.local.dev: Download complete
    user.local.dev: 8df48a2d4467:
    user.local.dev: Pull complete
    user.local.dev: 06eb74af83c0:
    user.local.dev: Pull complete
    user.local.dev: a642409dc81e:
    user.local.dev: Pull complete
    user.local.dev: 778617ae58c7:
    user.local.dev: Pull complete
    user.local.dev: 78e3d611ddbb:
    user.local.dev: Verifying Checksum
    user.local.dev: 78e3d611ddbb:
    user.local.dev: Download complete
    user.local.dev: 78e3d611ddbb:
    user.local.dev: Pull complete
    user.local.dev: ec0d78b01f70:
    user.local.dev: Pull complete
    user.local.dev: Digest: sha256:03681e6bb9de5ca4192e9c9b5035e0cc84404dbc107bb7069ca95152dca5f945
    user.local.dev: Status: Downloaded newer image for sonarqube:latest
    user.local.dev: 59c4228dfd9cd612ad2e90667febba1d795edcf6c2fa40da9906847aa478693f
    user.local.dev: tail: cannot open './logs/es.log' for reading: No such file or directory
    user.local.dev: tail: './logs/es.log' has appeared;  following new file
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.s.a.AppFileSystem] Cleaning or creating temp directory /opt/sonarqube/temp
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.s.a.es.EsSettings] Elasticsearch listening on /127.0.0.1:9001
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.s.a.ProcessLauncherImpl] Launch process[[key='es', ipcIndex=1, logFilenamePrefix=es]] from [/opt/sonarqube/elasticsearch]: /opt/sonarqube/elasticsearch/bin/elasticsearch
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.s.a.SchedulerImpl] Waiting for Elasticsearch to be up and running
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.e.p.PluginsService] no modules loaded
    user.local.dev: 2019.11.14 00:29:20 INFO  app[][o.e.p.PluginsService] loaded plugin [org.elasticsearch.transport.Netty4Plugin]
    user.local.dev: OpenJDK 64-Bit Server VM warning: Option UseConcMarkSweepGC was deprecated in version 9.0 and will likely be removed in a future release.
    user.local.dev: 2019.11.14 00:29:23 INFO  es[][o.e.e.NodeEnvironment] using [1] data paths, mounts [[/opt/sonarqube/data (/dev/sda1)]], net usable_space [4.2gb], net total_space [9.6gb], types [ext4]
    ...
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.s.p.ProcessEntryPoint] Starting ce
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.s.ce.app.CeServer] Compute Engine starting up...
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.e.p.PluginsService] no modules loaded
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.e.p.PluginsService] loaded plugin [org.elasticsearch.join.ParentJoinPlugin]
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.e.p.PluginsService] loaded plugin [org.elasticsearch.percolator.PercolatorPlugin]
    user.local.dev: 2019.11.14 00:30:13 INFO  ce[][o.e.p.PluginsService] loaded plugin [org.elasticsearch.transport.Netty4Plugin]
    user.local.dev: 2019.11.14 00:30:15 INFO  ce[][o.s.s.e.EsClientProvider] Connected to local Elasticsearch: [127.0.0.1:9001]
    user.local.dev: 2019.11.14 00:30:15 INFO  ce[][o.sonar.db.Database] Create JDBC data source for jdbc:h2:tcp://127.0.0.1:9092/sonar
    user.local.dev: 20
    user.local.dev: 19.11.14 00:30:15 WARN  ce[][o.s.db.dialect.H2] H2 database should be used for evaluation purpose only.
    user.local.dev: 2019.11.14 00:30:17 INFO  ce[][o.s.s.p.ServerFileSystemImpl] SonarQube home: /opt/sonarqube
    user.local.dev: 2019.11.14 00:30:17 INFO  ce[][o.s.c.c.CePluginRepository] Load plugins
    user.local.dev: 2019.11.14 00:30:18 INFO  ce[][o.s.c.c.ComputeEngineContainerImpl] Running Community edition
    user.local.dev: 2019.11.14 00:30:18 INFO  ce[][o.s.ce.app.CeServer] Compute Engine is operational
    user.local.dev: 2019.11.14 00:30:19 INFO  app[][o.s.a.SchedulerImpl] Process[ce] is up
    user.local.dev: 2019.11.14 00:30:19 INFO  app[][o.s.a.SchedulerImpl] SonarQube is up
    user.local.dev: /tmp/vagrant-shell: line 8:  7115 Terminated              sh -c 'sudo docker container logs sonarqube --follow | { sed "/SonarQube is up/ q" && kill $$ ;}'
    user.local.dev: Sonarcube is being launched, please give it a minute or two and then use login details below
    user.local.dev: Sonarqube http://localhost:9000
    user.local.dev: Username: admin Password: admin
    user.local.dev: TODO: fixme, ignore below error output
```
Go ahead and open `http://localhost:9000` and login with username: `admin` and password: `admin`
![SonarQube](images/sonarqube_logged_in_as_admin.png?raw=true "SonarQube")

No that we are logged into Sonarqube as admin, we need to generate a Token that we will add in Jenkins and use in our Pipeline.
So click on `Administration -> Security` and click on `users`
![SonarQube](images/sonarqube_administration.png?raw=true "SonarQube")

Now you will see Administrator (admin) user that you are logged in as, to the right there will be a Token configure button, please click on it and call the Token something descriptive, like `jenkins-sonarqube-admin` Click generate and copy the Token.
![SonarQube](images/sonarqube_administration_generate_token.png?raw=true "SonarQube")

Now let's head over to Jenkins to connect it to SonarQube. In Jenkins click `Manage Jenkins -> Magange Plugiuns`
In the `Available Tab` search for `SonarQube Scanner for Jenkins` select it and install it.

Be sure to tick the box `Restart Jenkins` when plugin installation is complete.
![Jenkins](images/jenkins_manage_plugins_install_sonarqube.png?raw=true "Jenkins")
![Jenkins](images/jenkins_manage_plugins_install_sonarqube_restart_jenkins.png?raw=true "Jenkins")

Now let's configure the plugin, and specify our SonarQube URL and token.

Go to `Manage Jenkins -> Configure System` and scroll down to the SonarQube section.
Our SonarQube details are:
Name: `sonarqube`
Server URL: `http://10.9.99.10:9000`
![Jenkins](images/jenkins_manage_jenkins_configure_system_sonarcube_configuration.png?raw=true "Jenkins")

Server authentication token: Click Add -> Jenkins and Select Jenkins.
Domain: `Global credentials`
Kind: `Secret text`
Scope: `Global`
Secret: The SonarQube admin toke we generated earlier.
ID: `jenkins-sonarqube-admin`
Description: `jenkins-sonarqube-admin`
![Jenkins](images/jenkins_manage_jenkins_configure_system_sonarcube_configuration_credentials.png?raw=true "Jenkins")

Now we should be ready to use this in Jenkins pipeline.

We click on `New Item - Select Pipeline` and call it `sonarqube-jenkins`
![Jenkins](images/jenkins_new_item_sonarqube-jenkins_pipeline.png?raw=true "Jenkins")

Scroll down to `Pipeline definition` and enter the following pipeline code.
```
node {
  def JOB_NAME_PARTS = JOB_NAME.tokenize('/') as String[]
  def PIPELINE_NAME = JOB_NAME_PARTS[0]    
  ws("${HOME}/workspace/${PIPELINE_NAME}") {
    dir("${HOME}/workspace/${PIPELINE_NAME}/") {
      stage('SCM') {
        git 'https://github.com/SonarSource/sonar-scanning-examples.git'
      }
      stage('Set sonar-project.properties') {
        sh """
          cat << EOF > ./sonar-project.properties
# Required metadata
sonar.projectKey=sonarqube-jenkins
sonar.projectName=Simple Demo project analyzed with the SonarQube Runner
sonar.projectVersion=1.0

# Comma-separated paths to directories with sources (required)
sonar.sources=sonarqube-scanner/src

# Language
sonar.language=java

# Encoding of the source files
sonar.sourceEncoding=UTF-8
EOF
        """
      }
      stage('SonarQube analysis') {
        def scannerHome = tool 'sonarqube';
        withSonarQubeEnv('sonarqube') { // If you have configured more than one global server connection, you can specify its name
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
```
Now let's click `Build Now`. Your Build should pass successfully, with the output such as below.
![Jenkins](images/jenkins_sonarqube-jenkins_pipeline_successful_build.png?raw=true "Jenkins")

At `SonarQube Quality Gate`
`Simple Demo project analyzed with the SonarQube Runner` Click on `OK`
This will take you to the build URL for SonarQube
![Jenkins](images/jenkins_sonarqube-jenkins_pipeline_successful_build_conarqube_page.png?raw=true "Jenkins")
