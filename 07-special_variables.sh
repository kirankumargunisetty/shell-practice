#!/bin/bash

#### Special Vars ####

echo "All variables passed to script: $@"
echo "Number of variables passed to script: $#"
echo "First varibale: $1"
echo "Script name:$0"
echo "Who is running this script: $USER"
echo "From which directory we are running: $PWD"
echo "Present user home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
wait $!
echo "Line number: $LINENO"
echo "script executed in $SECONDS seconds"
echo "Random number: $RANDOM"
echo "Exit code of previous command: $?"
