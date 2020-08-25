#!/bin/bash

# Updates a via server, only the server part, without application internals. Use deploy.sh for a full deployment.
#
# Usage: ./update.sh <name of instance>
# Example: ./update.sh production

ansible-playbook -i site/inventory_$1.yml -e instanceName=$1 --ask-become-pass playbook_update.yml
