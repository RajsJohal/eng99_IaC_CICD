#!/bin/bash

echo -e "[app]\nec2-instance ansible_host=$(terraform output app_instance_ip) ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/eng99.pem " | sed 's/"//g' > /etc/ansiblehosts

echo -e "[db]\nec2-instance ansible_host=$(terraform output db_instance_ip) ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/eng99.pem " | sed 's/"//g' >> /etc/ansiblehosts