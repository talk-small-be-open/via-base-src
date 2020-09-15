#!/bin/bash

# Usage *.sh duplicityTarget

# Get credentials for duplicity, if any
source "/opt/via/.duplicity.cred"

BACKEND=$1

# GemStone DB
echo -n "GEMSTONE DATABASE"
TARGET=$BACKEND/via_db
duplicity collection-status $TARGET
duplicity list-current-files $TARGET

# Assets
echo -n "ASSETS"
TARGET=$BACKEND/via_assets
duplicity collection-status $TARGET
duplicity list-current-files $TARGET

# Exported module PDFs and others
echo -n "EXPORTS"
TARGET=$BACKEND/via_exports
duplicity collection-status $TARGET
duplicity list-current-files $TARGET
