#!/usr/bin/env bash
set -eo pipefail

apt-get update
apt-get install -y git make curl software-properties-common

# NEED?
apt-get install -y python-software-properties

make sshcommand

#TODO clone repo

make install
