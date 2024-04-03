#!/bin/bash

# Process Watcher Script
# Monitors a specific process and starts it if it isn't running.
#
# @author BASHCAVE
# @version 1.0.0
# @license MIT

echo "Process Watcher Script"
read -p "Enter the process name to monitor: " process_name
read -p "Enter the command to start the process: " start_command

# Check if the process is running
if pgrep -x "$process_name" > /dev/null
then
    echo "The process $process_name is already running."
else
    echo "The process $process_name is not running."
    echo "Starting $process_name..."
    $start_command &
    echo "$process_name started."
fi
