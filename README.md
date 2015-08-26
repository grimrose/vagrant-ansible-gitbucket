vagrant-ansible-gitbucket
=========================

GitBucket provisioning by Ansible with Vagrant

## require

* Packer
* Ansible
* Vagrant

## packer-templates

at first.

``` sh
$ git submodule init
```

after

``` sh
$ git submodule update
```


## packer

``` sh
$ cd packer
$ packer build template.json
```
