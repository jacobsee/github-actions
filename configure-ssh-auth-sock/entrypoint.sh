#!/bin/bash

DOMAIN=$1
PRIVATE_KEY=$2
SSH_AUTH_SOCK=$3

mkdir -p $HOME/.ssh
echo "Building known_hosts file"
ssh-keyscan $DOMAIN >> $HOME/.ssh/known_hosts
echo "Built known_hosts file"
echo "Starting ssh-agent"
eval `ssh-agent -a $SSH_AUTH_SOCK`
echo "Adding identity"
ssh-add - <<< $PRIVATE_KEY
echo "::set-env name=SSH_AUTH_SOCK::$SSH_AUTH_SOCK"
