#!/bin/bash

# Usage *.sh duplicityTarget

# Get credentials for duplicity, if any
source "/opt/via/.duplicity.cred"

BACKEND=$1

# GemStone DB
echo -e "GEMSTONE DATABASE\n================"
TARGET=$BACKEND/via_db
duplicity collection-status --verbosity warning $TARGET
duplicity list-current-files --verbosity warning $TARGET

# Assets
echo -e "ASSETS\n========"
TARGET=$BACKEND/via_assets
duplicity collection-status --verbosity warning $TARGET
duplicity list-current-files --verbosity warning $TARGET

# Exported module PDFs and others
echo -e "EXPORTS\n========"
TARGET=$BACKEND/via_exports
duplicity collection-status --verbosity warning $TARGET
duplicity list-current-files --verbosity warning $TARGET
