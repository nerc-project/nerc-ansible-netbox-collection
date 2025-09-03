#!/bin/bash
set -e

source $PWD/ci-scripts/init.sh

${_PODMAN_RUN} \
  ghcr.io/nerc-project/nerc-ansible-container:sha-11ab902 \
  bash -l -c \
    ". /srv/docker-ansible/env/bin/activate;
     ansible-galaxy collection list
     $GALAXY_INSTALL;
     ansible-lint $@"
