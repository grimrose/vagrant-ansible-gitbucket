#!/usr/bin/env bash

if ! [ `which add-apt-repository` ]; then
	apt-get install -y python-software-properties
	apt-get update -y
	apt-add-repository -y ppa:ansible/ansible
fi

if ! [ `which ansible` ]; then
	apt-get update -y
	apt-get install -y ansible
fi

PYTHONUNBUFFERED=1 ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml
