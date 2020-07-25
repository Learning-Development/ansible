#!/bin/bash

echo $ANSIBLE_VAULT_PASSWORD >> .vault

ansible-galaxy install -r roles/requirements.yml

ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .vault

rm .vault

if <condition> ; then
  echo "Game over!"
  exit 1
fi