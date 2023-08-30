#! /usr/bin/bash
# This script will be used to bootstrap the ansible process
# The idea is that a fresh install won't have git or ansible installed
# Which are required to grab the playbook and run it
sudo apt update
sudo apt install git ansible -y 
ansible-pull -U https://github.com/jpl1337/ansible-home.git