#!/bin/sh
echo on
RUNNER_SCRIPT_DIR=$(pwd)
VM_NAME=ubuntuchef1164
COOKBOOK=cookbook
vagrant init ${VM_NAME}
vagrant up --provider=virtualbox
[ -d ${COOKBOOK} ] || mkdir -p ${COOKBOOK}

vagrant list ${VM_NAME}

