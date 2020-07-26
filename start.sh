#!/bin/bash
sudo apt update
sudo apt -y install software-properties-common
# sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt -y install ansible apt-transport-https hub python-apt
git config --global hub.protocol https
cd ~
hub clone workstation-builder
cd workstation-builder
chmod 755 *.sh
ansible-playbook -i hosts --ask-become-pass playbook.yml
