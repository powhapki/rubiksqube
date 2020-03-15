# Ansible Tower
https://www.ansible.com/blog/ansible-tower-feature-spotlight-custom-credentials
https://github.com/ybalt/ansible-tower
https://www.ansible.com/products/tower
https://www.ansible.com/

## About
With Red Hat® Ansible® Tower you can centralize and control your IT infrastructure with a visual dashboard, role-based access control, job scheduling, integrated notifications and graphical inventory management. Easily embed Ansible Tower into existing tools and processes with REST API and CLI.

## Provision

`vagrant up --provision-with ansible-tower`

```
Bringing machine 'user.local.dev' up with 'virtualbox' provider...
==> user.local.dev: Checking if box 'ubuntu/bionic64' version '20191218.0.0' is up to date...
==> user.local.dev: [vagrant-hostsupdater] Checking for host entries
==> user.local.dev: [vagrant-hostsupdater]   found entry for: 10.9.99.10 user.local.dev
==> user.local.dev: Running provisioner: ansible-tower (shell)...
    user.local.dev: Running: /var/folders/7j/gsrjvmds05n53ddg28krf4_80001p9/T/vagrant-shell20200225-3408-inkt7c.sh
    user.local.dev: Error response from daemon: No such container: ansible-tower
    user.local.dev: Error: No such container: ansible-tower
    user.local.dev: WARNING! This will remove:
    user.local.dev:   - all stopped containers
    user.local.dev:   - all networks not used by at least one container
    user.local.dev:   - all images without at least one container associated to them
    user.local.dev:   - all build cache
    user.local.dev:
    user.local.dev: Are you sure you want to continue? [y/N]
    user.local.dev: Total reclaimed space: 0B
    user.local.dev: WARNING! This will remove:
    user.local.dev:   - all stopped containers
    user.local.dev:   - all networks not used by at least one container
    user.local.dev:   - all volumes not used by at least one container
    user.local.dev:   - all dangling images
    user.local.dev:   - all dangling build cache
    user.local.dev:
    user.local.dev: Are you sure you want to continue? [y/N]
    user.local.dev: Total reclaimed space: 0B
    user.local.dev: Unable to find image 'ybalt/ansible-tower:latest' locally
    user.local.dev: latest:
    user.local.dev: Pulling from ybalt/ansible-tower
    user.local.dev: 8284e13a281d:
    user.local.dev: Pulling fs layer
    user.local.dev: 26e1916a9297:
    user.local.dev: Pulling fs layer
    user.local.dev: 4102fc66d4ab:
    user.local.dev: Pulling fs layer
    user.local.dev: 1cf2b01777b2:
    user.local.dev: Pulling fs layer
    user.local.dev: 7f7a2d5e04ed: Pulling fs layer
    user.local.dev: 90d519e694d5: Pulling fs layer
    user.local.dev: 8f365fdb685a: Pulling fs layer
    user.local.dev: bb6a0206caf8: Pulling fs layer
    user.local.dev: 7a2dc10cd48f: Pulling fs layer
    user.local.dev: 8eaaa849649a: Pulling fs layer
    user.local.dev: 2cd6d19fe3b7: Pulling fs layer
    user.local.dev: 1fa4bbdb57e3: Pulling fs layer
    user.local.dev: 9f62fe1e23c8: Pulling fs layer
    user.local.dev: 57fd78550688: Pulling fs layer
    user.local.dev: 723af123bb74:
    user.local.dev: Pulling fs layer
    user.local.dev: 260d562e6044: Pulling fs layer
    user.local.dev: 7a2dc10cd48f: Waiting
    user.local.dev: 8eaaa849649a: Waiting
    user.local.dev: 2cd6d19fe3b7: Waiting
    user.local.dev: 1fa4bbdb57e3: Waiting
    user.local.dev: 9f62fe1e23c8: Waiting
    user.local.dev: 57fd78550688: Waiting
    user.local.dev: 723af123bb74: Waiting
    user.local.dev: 260d562e6044: Waiting
    user.local.dev: 1cf2b01777b2:
    user.local.dev: Waiting
    user.local.dev: 7f7a2d5e04ed: Waiting
    user.local.dev: 90d519e694d5: Waiting
    user.local.dev: 8f365fdb685a: Waiting
    user.local.dev: bb6a0206caf8: Waiting
    user.local.dev: 4102fc66d4ab: Verifying Checksum
    user.local.dev: 4102fc66d4ab: Download complete
    user.local.dev: 26e1916a9297: Verifying Checksum
    user.local.dev: 26e1916a9297: Download complete
    user.local.dev: 1cf2b01777b2:
    user.local.dev: Verifying Checksum
    user.local.dev: 1cf2b01777b2: Download complete
    user.local.dev: 7f7a2d5e04ed:
    user.local.dev: Verifying Checksum
    user.local.dev: 7f7a2d5e04ed:
    user.local.dev: Download complete
    user.local.dev: 8f365fdb685a:
    user.local.dev: Verifying Checksum
    user.local.dev: 8f365fdb685a:
    user.local.dev: Download complete
    user.local.dev: 90d519e694d5: Verifying Checksum
    user.local.dev: 90d519e694d5: Download complete
    user.local.dev: 7a2dc10cd48f: Verifying Checksum
    user.local.dev: 7a2dc10cd48f: Download complete
    user.local.dev: 8eaaa849649a: Verifying Checksum
    user.local.dev: 8eaaa849649a: Download complete
    user.local.dev: 2cd6d19fe3b7: Verifying Checksum
    user.local.dev: 2cd6d19fe3b7: Download complete
    user.local.dev: bb6a0206caf8: Download complete
    user.local.dev: 1fa4bbdb57e3: Verifying Checksum
    user.local.dev: 1fa4bbdb57e3: Download complete
    user.local.dev: 57fd78550688: Verifying Checksum
    user.local.dev: 57fd78550688: Download complete
    user.local.dev: 9f62fe1e23c8:
    user.local.dev: Verifying Checksum
    user.local.dev: 9f62fe1e23c8:
    user.local.dev: Download complete
    user.local.dev: 260d562e6044:
    user.local.dev: Verifying Checksum
    user.local.dev: 260d562e6044:
    user.local.dev: Download complete
    user.local.dev: 8284e13a281d: Verifying Checksum
    user.local.dev: 8284e13a281d: Download complete
    user.local.dev: 8284e13a281d: Pull complete
    user.local.dev: 26e1916a9297: Pull complete
    user.local.dev: 4102fc66d4ab: Pull complete
    user.local.dev: 1cf2b01777b2: Pull complete
    user.local.dev: 7f7a2d5e04ed: Pull complete
    user.local.dev: 90d519e694d5: Pull complete
    user.local.dev: 8f365fdb685a: Pull complete
    user.local.dev: bb6a0206caf8: Pull complete
    user.local.dev: 7a2dc10cd48f: Pull complete
    user.local.dev: 8eaaa849649a: Pull complete
    user.local.dev: 2cd6d19fe3b7: Pull complete
    user.local.dev: 1fa4bbdb57e3: Pull complete
    user.local.dev: 9f62fe1e23c8: Pull complete
    user.local.dev: 57fd78550688: Pull complete
    user.local.dev: 723af123bb74: Verifying Checksum
    user.local.dev: 723af123bb74: Download complete
    user.local.dev: 723af123bb74: Pull complete
    user.local.dev: 260d562e6044: Pull complete
    user.local.dev: Digest: sha256:85a3738b908b96402eb6a519f366bdf3c1fac591d3a3005b63f3cc87eaf17521
    user.local.dev: Status: Downloaded newer image for ybalt/ansible-tower:latest
    user.local.dev: 84107f215dfa89cf58c848855283de53833c8209e420318284999399081d8847
    user.local.dev: ++++ Ansible-Tower http://localhost:5443
    user.local.dev: ++++ Login with User: admin and Password: password
```

## Summary
After provision, you can access Ansible Tower https://localhost:5443/ and login with User: __admin__ and Password: __password__
![Ansible Tower](images/ansible-tower.png?raw=true "Ansible Tower")
