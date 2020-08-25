#!/bin/bash

# Deploys an already running via server to the newest state.
#
# Usage: ./deploy.sh <name of instance>
# Example: ./deploy.sh production

ansible-playbook -i ./site/inventory_$1.yml -e instanceName=$1 --ask-become-pass playbook_deploy.yml
