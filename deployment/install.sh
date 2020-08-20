#!/bin/bash

# Installs a via server from scratch
#
# Usage: ./install.sh <name of instance>
# Example: ./install.sh production

ansible-playbook -i ./site/inventory_$1.yml -e instanceName=$1 --ask-become-pass playbook_install.yml
