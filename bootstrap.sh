#!/usr/bin/env bash
set -eo pipefail
export DEBIAN_FRONTEND=noninteractive

export DINGO_REPO=${DINGO_REPO:-"https://github.com/lepture/dingo.git"}
export DINGO_ROOT=${DOKKU_ROOT:="/home/dingo"}
export DINGO_LIB=${DINGO_LIB:="/var/lib/dingo"}

#apt-get update
apt-get install -y git make curl software-properties-common

# NEED?
apt-get install -y python-software-properties

#TODO clone repo

make install

# install plugins
dingo plugins-install
