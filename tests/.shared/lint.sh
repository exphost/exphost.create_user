#!/bin/bash
result=0
trap 'result=1' ERR
yamllint roles/exphost.create_user/
ansible-lint dummy_playbook.yml
exit $result

