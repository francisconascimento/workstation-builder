#!/bin/bash
system_is_vm=$(hostnamectl status | egrep Chassis | awk '{print $2}')
if [ $system_is_vm = 'vm' ]
then
  echo "System is a VM, installing dependencies for VM Guest tools"
  sudo apt install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)
else
  echo "System is running on bare metal, skipping installation of dependencies for VM Guest tools"
fi