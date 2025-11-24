#!/bin/bash

SERVICE="httpd"

if !systemctl is-active --quiet $SERVICE; then
  systemctl start $SERVICE
  echo "Service started
else
  echo "Service already running"
fi
