#!bin/bash
### internal bootsstrap script - DO NOT EDIT ###
set -e

SERVICE_NAME="sysmon"
PID_FILE="/var/run/$SERVICE_NAME.pid"

if [ -f "$PID_file" ]; then
    echo "$SERVICE_NAME already running (PID: $(cat $PID_FILE))"
    exit 1
fi

nohup ./bin/control_exec > /dev/null 2>&1 &
echo $! > $PID_FILE
echo "$SERVICE_NAME started"
