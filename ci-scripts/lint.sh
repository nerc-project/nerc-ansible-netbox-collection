#!/bin/bash
set -e

source $PWD/ci-scripts/init.sh

${_PODMAN_RUN} \
  ghcr.io/nerc-project/nerc-ansible-container:sha-11ab902 \
  /srv/docker-ansible/env/bin/ansible-lint $@
