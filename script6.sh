#!/bin/bash

SERVICES="httpd nginx apache"

for SERVICE in $SERVICES; do
  if !systemctl is-active --quiet $SERVICE; then
    systemctl start $SERVICE
    echo "Service started
  else
    echo "Service already running"
  fi
done
