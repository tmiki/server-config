#!/bin/sh

yum install epel-release -y
yum install net-tools ansible git awscli -y

cd /srv/server-config/local_vagrant/
ansible-playbook -v -i hosts/localdev localdev.yml
#ansible-playbook -v -i hosts/localdev deploy_localdev.yml --extra-vars "app_deploy_target=develop"

