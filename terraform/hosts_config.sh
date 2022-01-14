#!/bin/bash

echo -e "[app]\n$(terraform output app_instance_ip) ansible_user=ubuntu\n" | sed 's/"//g' > hosts.inv

echo -e "[db]\n$(terraform output db_instance_ip) ansible_user=ubuntu" | sed 's/"//g' >> hosts.inv