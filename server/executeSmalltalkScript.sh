#!/bin/bash

# TODO: include env vars from gemstone
# output pushnew $GEMSTONE_LOGDIR/executeSmalltalk.log


startTopaz via -q -l << EOF > /dev/null
display oops
output pushnew executeSmalltalk.log
login
run
$(cat $1)
System commitTransaction.
%
logout
exit
EOF
