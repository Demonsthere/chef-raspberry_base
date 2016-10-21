#!/bin/bash -x

CONNECTIONS=$(netstat -tnpa | grep 'ESTABLISHED.*sshd' | wc -l)

if [[ $CONNECTIONS > 0 ]]; then
  echo "Active SSH sessions found."
else
  echo "No active SSH sessions found, going to sleep!"
  /sbin/shutdown
fi