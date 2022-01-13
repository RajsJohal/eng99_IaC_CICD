#!/bin/bash

echo -e "[app]\nec2-instance ansible_host=$(terraform output app_instance_ip) ansible_user=ubuntu" | sed 's/"//g' > hosts.inv

echo -e "[db]\nec2-instance ansible_host=$(terraform output db_instance_ip) ansible_user=ubuntu" | sed 's/"//g' >> hosts.inv