#!/bin/bash
ansible-galaxy install -p roles -r requirements.yml
[ -L roles/exphost.create_user ] && unlink roles/exphost.create_user
[[ ! -L roles/exphost.create_user && -d roles/exphost.create_user ]] && rm -r roles/exphost.create_user
ln -s ../../../ roles/exphost.create_user
