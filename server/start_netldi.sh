#!/bin/bash

# starting netldi needs the USER env var. If running from monit, that var is missing
# so we need to set it
if [[ -v VIA_MONIT_USER ]]; then
		export USER=$VIA_MONIT_USER
		export HOME=/home/$USER
fi
	 
$GS_HOME/bin/startNetldi via
