#!/bin/bash

# Usage .sh stoneName duplicitySource

STONE_NAME=$1
BACKEND=$2

# Get credentials for duplicity, if any
source "/opt/via/.duplicity.cred"


# Ask for name of backup

# Relocate the original files

# Stop GemStone processes
sudo monit -g via_gemstone_gems stop
sudo monit stop via_gemstone_stone


#
# restores with duplicity
#

# GemStone DB
SOURCE=$BACKEND/via_db
duplicity restore --log-file /opt/via/log/duplicity.log --verbosity notice $SOURCE $GS_HOME/server/stones/$STONE_NAME/restore

# Assets
SOURCE=$BACKEND/via_assets
duplicity restore --log-file /opt/via/log/duplicity.log --verbosity notice $SOURCE /opt/via/via_base/web_root/assets

# DO NOT restore exported module PDFs and others, makes no sense




# Remove tranlogs

# Start GemStone in recover mode and stop again
startStone -R $STONE_NAME
stopStone $STONE_NAME

# Restart GemStone
sudo monit -g via_gemstone_gems start
sudo monit start via_gemstone_stone

