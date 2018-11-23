# Name
server-config

# Overview
The collection of Ansible Playbooks which can set up servers automatically.

# Description
Those playbooks run on a CentOS 7 / Amazon Linux instance which runs on your local virtual machine.
They can also set up remote servers, if you want so.  

# Requirement
## for the Host Environment
Oracle Virtual Box 5.2.12 (or higher)  
Vagrant 2.1.1 (Older than 1.9.2 may cause some issues)  

## for the Guest Environment. (They can be installed an Ansible Playbook described below.)
CentOS 7 / Amazon Linux  
Ansible 2 (or higher)  

# How to build&configure each servers
## local development environment
You can run an Ansible Playbook starts with the "sys\_\*" prefix to configure your local Linux instance.

```
$ ansible-playbook -v -i hosts/local sys_local_amazonlinux.yml  
```

```
$ ansible-playbook -v -i hosts/local sys_local_centos7.yml  
```


## Amazon Lightsail 
The Ansible Playbook "aws_lightsail_wp.yml" depends on the "lightsail" module.
https://docs.ansible.com/ansible/2.7/modules/lightsail_module.html

I wanted to obtain a new Static IP and assign it with a Lightsail instance, however, they don't support Static IP functionalities currently.
Besides, you need to create a key pair for your Lightsail instances, because you cannot assign EC2 key pairs with Lightsail instances.  

\# Note: A Static IP is similar to an Elastic IP but different from it. That is dedicated to Lightsail.  
\# https://lightsail.aws.amazon.com/ls/docs/en/articles/understanding-static-ip-addresses-in-amazon-lightsail


Therefore, you need to perform some procedures as below before running the Playbook.

1. Create a key pair for Lightsail

If you haven't created a key pair for Lightsail instances, you have to create it at first as below(just for example).
You can specify the parameter "--key-pair-name" up to you. Please keep the name because that parameter will be used in the Ansible Playbook later.
Needless to say, please also keep the keypair content redirected to the file.
```
$ aws lightsail create-key-pair --key-pair-name dev1-lightsail-keypair > dev1-lightsail-keypair.json

```

2. Allocate a new Static IP

Obtain a Static IP with the following command. You can specify the parameter "--key-pair-name" arbitrarily.
Please keep that name because it will be used in the Ansible Playbook later.

```
$ aws lightsail allocate-static-ip --static-ip-name dev1-example-site-ip
```

3. Modify variable definitions

You can modify the keypair name or Static IP name in the "hosts/\*/group_vars/all.yml" file.

4. Run the Playbook

The Ansible Playbook will create a Lightsail instance and associates it with the Static IP and create a Route53 record which points to the Static IP.

```
$ ansible-playbook -vv -i hosts/dev1 aws_lightsail_wp.yml 
```

4. Create a Route53 record manually, if the Playbook fails.

The Playbook will create a Route53 record associated with your Lightsail instance.
However, currently, the task to create a Route53 record will fail, if you use an AWS CLI profile using AssumeRole switching.
If you confront such error, please create a Route53 record manually.


# LICENSE
MIT License  


