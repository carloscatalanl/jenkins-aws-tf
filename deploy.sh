#!/bin/bash 

## SSH Keys

# Create folder and ssh keys
mkdir -p private
ssh-keygen -f $PWD/private/key_access -N ""

# Change privileges
chmod 400 $PWD/private/ssh/key_access

# Copy to instances module
cp -a $PWD/private $PWD/modules/instances/

## Terraform 
terraform init
terraform apply -auto-approve