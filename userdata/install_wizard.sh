#!/bin/bash
cat <<EOF > /opt/post-scripts/custom_scripts/files/script.sh

#########################################
################ Ansible ################

useradd ansible
mkdir /home/ansible/.ssh/
echo """
""" >> /home/ansible/.ssh/authorized_keys
chown -R ansible.ansible /home/ansible/.ssh/
chmod 600 /home/ansible/.ssh/*

echo """
ansible  ALL=(ALL)  NOPASSWD: ALL
""" > /etc/sudoers.d/ansible

yum -y update



EOF