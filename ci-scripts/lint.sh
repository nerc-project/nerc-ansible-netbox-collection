#!/bin/bash
set -e

source $PWD/ci-scripts/init.sh

${_PODMAN_RUN} \
  -e ANSIBLE_COLLECTIONS_PATH="/code/collections:/code/galaxy-collections" \
  ghcr.io/nerc-project/nerc-ansible-container:sha-11ab902 \
  bash -l -c \
    ". /srv/docker-ansible/env/bin/activate;
     $GALAXY_INSTALL;
     ansible-lint $@"
