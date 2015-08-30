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

## vagrant

``` sh
$ vagrant up
$ vagrant provision
```

## ansible

in manually

``` sh
$ cd ansible
$ ansible-playbook -i hosts site.yml
```

## serverspec

``` sh
$ cd ansible
$ gem install bundler
$ bundle install --path=vendor/bundle
$ bundle exec rake serverspec:GitBucket-Servers
```
