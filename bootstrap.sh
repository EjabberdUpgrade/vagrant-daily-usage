#!/bin/sh
echo on
RUNNER_SCRIPT_DIR=$(cd ${0%/*} && pwd)
VM_NAME=ubuntuchef1164
COOKBOOK=cookbook
vagrant init ${VM_NAME}
vagrant up
[ -d ${COOKBOOK} ] || mkdir -p ${COOKBOOK}

