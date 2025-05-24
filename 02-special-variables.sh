#!/bin/bash

echo "all variables passed to script: $1"
echo "number of variables passed: $@"
echo "what is the script name: $0"
echo "PWD: $PWD"
echo "home directory of user, who is running the script: $HOME"
echo "which user is running the script: $USER"
echo "PID of the current script: $$"
