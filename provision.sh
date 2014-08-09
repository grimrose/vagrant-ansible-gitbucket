#!/usr/bin/env bash

ansible-playbook -i ansible/hosts ansible/site.yml --private-key=~/.vagrant.d/insecure_private_key -v
