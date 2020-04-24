#!/bin/bash
sudo apt update
sudo apt -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt -y install ansible git hub python-apt
git config --global hub.protocol https
hub clone workstation-builder
cd workstation-builder
ansible-playbook -i hosts --ask-become-pass playbook.yml