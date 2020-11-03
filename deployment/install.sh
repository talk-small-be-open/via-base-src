#!/bin/bash

# Installs a via server from scratch
#
# Usage: ./install.sh <name of instance>
# Example: ./install.sh production

# NOT needed: --ask-become-pass
ansible-playbook -i ./site/inventory_$1.yml -e instanceName=$1 playbook_install.yml
