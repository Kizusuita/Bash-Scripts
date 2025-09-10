#!/usr/bin/env bash

if [ $# -ne 1 ]; then #This forces only 1 argument in a script, this exact syntax.
    echo "Usage: error_handling.sh <person>"
    exit 1
else
    echo "Hello, $1"
fi

