#!/bin/bash

ansible-playbook -i site/inventory_$1.yml -e customerCode=$1 --ask-become-pass playbook_update.yml
