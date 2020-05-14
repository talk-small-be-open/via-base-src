#!/bin/bash


startTopaz via -q -l << EOF > /dev/null
display oops
output pushnew $GEMSTONE_LOGDIR/executeSmalltalk.log
login
run
$(cat $1)
System commitTransaction.
%
logout
exit
EOF
