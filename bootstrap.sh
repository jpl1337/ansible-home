#! /usr/bin/bash
# This script will be used to bootstrap the ansible process
# The idea is that a fresh install won't have git or ansible installed
# Which are required to grab the playbook and run it
printf "\nUpdating....\n\n"
sudo apt update
printf "\nInstalling ansible...\n\n"
sudo apt install git ansible -y 
printf "\nRunning ansible-home playbook...\n\n"
ansible-pull -U https://github.com/jpl1337/ansible-home.git
printf "\nDone running ansible-home playbook...\n\nBYE!!\n"
neofetch