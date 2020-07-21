#!/bin/bash

DOMAIN=$1
PRIVATE_KEY=$2
SSH_AUTH_SOCK=$3
# SSH_AUTH_SOCK=/tmp/ssh_agent.sock

mkdir -p ~/.ssh
echo "Building known_hosts file"
ssh-keyscan $DOMAIN >> ~/.ssh/known_hosts
echo "Built known_hosts file"
echo "Starting ssh-agent"
eval `ssh-agent -a $SSH_AUTH_SOCK`
echo "Adding identity"
ssh-add - <<< $PRIVATE_KEY
