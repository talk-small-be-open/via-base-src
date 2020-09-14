#!/bin/bash

# Usage backup.sh stoneName duplicityTarget

./backup_gemstone_db.sh $1
./backup_with_duplicity.sh $1 $2
