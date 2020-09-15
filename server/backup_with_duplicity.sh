#!/bin/bash

# Usage backup_with_duplicity.sh stoneName duplicityTarget

STONE_NAME=$1


# Get credentials for duplicity, if any
source "/opt/via/.duplicity.cred"

#
# Run duplicity
#
# Backend example:
# BACKEND=s3://sos-ch-dk-2.exo.io
# BACKEND=/var/backup
BACKEND=$2

# GemStone DB
TARGET=$BACKEND/via_db
duplicity --log-file /opt/via/log/duplicity.log --verbosity info --archive-dir=/opt/via/tmp/duplicity --no-print-statistics --full-if-older-than 7D --no-encryption --include "**/via_backup.dbf.gz" --exclude "**/*" $GS_HOME/server/stones/$STONE_NAME/backups $TARGET
duplicity remove-all-but-n-full 3 --archive-dir=/opt/via/tmp/duplicity --log-file /opt/via/log/duplicity.log --force --verbosity info --no-print-statistics $TARGET

# Assets
TARGET=$BACKEND/via_assets
duplicity --log-file /opt/via/log/duplicity.log --verbosity info --archive-dir=/opt/via/tmp/duplicity --no-print-statistics --full-if-older-than 7D --no-encryption /opt/via/via_base/web_root/assets $TARGET
duplicity remove-all-but-n-full 3 --archive-dir=/opt/via/tmp/duplicity --log-file /opt/via/log/duplicity.log --force --verbosity info --no-print-statistics $TARGET

# Exported module PDFs and others
TARGET=$BACKEND/via_exports
duplicity --log-file /opt/via/log/duplicity.log --verbosity info --archive-dir=/opt/via/tmp/duplicity --no-print-statistics --full-if-older-than 7D --no-encryption /opt/via/export $TARGET
duplicity remove-all-but-n-full 3 --archive-dir=/opt/via/tmp/duplicity --log-file /opt/via/log/duplicity.log --force --verbosity info --no-print-statistics $TARGET
