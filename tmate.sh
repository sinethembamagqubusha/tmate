#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

apt update >/dev/null;apt -y install nano iputils-ping screen net-tools openssh-server build-essential psmisc libreadline-dev dialog curl wget tmate >/dev/null
sleep 2
netstat -ntlp
sleep 2
ssh-keygen -m PEM -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""
sleep 2
tmate
sleep 30
ping t.co
