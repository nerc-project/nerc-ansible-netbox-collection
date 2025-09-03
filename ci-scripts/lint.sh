#!/bin/bash
set -e

source $PWD/ci-scripts/init.sh

${_PODMAN_RUN} \
  -e ANSIBLE_ROLES_PATH="/code/roles:/code/galaxy-roles" \
  -e ANSIBLE_COLLECTIONS_PATH="/code/collections:/code/galaxy-collections:/srv/docker-ansible/env/lib/python3.10/site-packages/ansible_collections" \
  ghcr.io/nerc-project/nerc-ansible-container:sha-11ab902 \
    bash -l -c \
      ". /srv/docker-ansible/env/bin/activate;
      ansible-galaxy collection list;
      ansible-galaxy role list;
      $GALAXY_INSTALL;
      ansible-lint $@"
