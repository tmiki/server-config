
# Overview
This repository provides a couple of Vagrantfile and Ansible playbooks.  
Once you can build a virtual machine on your PC where Oracle Virtual Box and Vagrant are installed. Then, the virtual machine will be configured automatically by Ansible.

# Description
You can run the following OS distributions by making use of Vagrantfiles.  
The Ansible playbooks also can be run on them.

- Amazon Linux 2023
- Debian 12
- Ubuntu 20
- Ubuntu 22

# Requirement
The following software needs installed on your host PC.

- Oracle Virtual Box 5.2.12 (or higher)  
- Vagrant 2.1.1 (Older than 1.9.2 may cause some issues)  

# Usage for Ansible
## local development environment
You can run an Ansible Playbook starts with the "sys\_\*" prefix to configure your local Linux instance.

```
$ ansible-playbook -v -i hosts/local sys_local_amazonlinux.yml  
```

```
$ ansible-playbook -v -i hosts/local sys_local_centos7.yml  
```


## Amazon Lightsail 
Please refer another README.md in the "ansible/" directory.

# LICENSE
MIT License  


