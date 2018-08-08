#!/bin/bash

./test.sh
RETVAL=$?
echo "Script finished with status: "
[ $RETVAL -eq 0 ] && echo Success
[ $RETVAL -ne 0 ] && echo Failure
