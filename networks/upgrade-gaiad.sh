#!/bin/sh
# upgrade-dexd - example make call to upgrade dexd on a set of nodes in AWS
# WARNING: Run it from the current directory - it uses relative paths to ship the binary and the genesis.json,config.toml files

if [ $# -ne 1 ]; then
  echo "Usage: ./upgrade-dexd.sh <clustername>"
  exit 1
fi
set -eux

export CLUSTER_NAME=$1

make upgrade-dexd

