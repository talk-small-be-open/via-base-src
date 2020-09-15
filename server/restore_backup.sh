
#!/bin/bash


# Ask for name of backup

# Relocate the original files

# Stop GemStone processes

# restores with duplicity

# Start GemStone in recover mode

# Restart GemStone



# Usage .sh stoneName duplicityTarget

STONE_NAME=$1
BACKEND=$2

# Get credentials for duplicity, if any
source "/opt/via/.duplicity.cred"

# GemStone DB
SOURCE=$BACKEND/via_db
duplicity restore --log-file /opt/via/log/duplicity.log --verbosity notice $SOURCE $GS_HOME/server/stones/$STONE_NAME/restore

# Assets
SOURCE=$BACKEND/via_assets
duplicity restore --log-file /opt/via/log/duplicity.log --verbosity notice $SOURCE /opt/via/via_base/web_root/assets

# DO NOT restore exported module PDFs and others, makes no sense
