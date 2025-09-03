# NERC Netbox Role Collection

Collection for a role to deploy Netbox on NERC infrastructure

To use, update galaxy-requirements.yml

```sh
collections:
  - name: nerc.netbox
    type: git
    version: main
    source: https://github.com/nerc-project/nerc-netbox-ansible-collection.git
```

## Roles

### netbox

Installs netbox containers on a host.

Example:

```sh
- name: deploy netbox
  hosts: localhost
  gather_facts: false
  roles:
    - nerc.netbox.netbox
```
