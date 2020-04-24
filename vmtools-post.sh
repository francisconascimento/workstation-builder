#!/bin/bash
system_is_vm=$(hostnamectl status | egrep Chassis | awk '{print $2}')
if [ $system_is_vm = 'vm' ]
then
  echo "System is a VM, installing Open VM Guest tools"
  sudo apt install -y open-vm-tools open-vm-tools-desktop
else
  echo "System is running on bare metal, skipping installation of Open VM Guest tools"
fi