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