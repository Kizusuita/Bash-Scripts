#!/usr/bin/env bash

if [[ -z "$1" || "$1" =~ ^[[:space:]]+$ ]]; then
    echo "Fine. Be that way!"
elif [[ "$1" =~ ^[A-Z[:space:]\'\?]+$ && "$1" == *\? ]]; then
    echo "Calm down, I know what I'm doing!"
elif [[ "$1" =~ ^[A-Za-z] && "$1" == *\? ]]; then
    echo "Sure."
elif [[ ! "$1" =~ [a-zA-Z?] ]]; then
    echo "Whatever."
elif [[ "$1" =~ [[:space:]]+$ && ! "$1" =~ \? ]]; then
    echo "Whatever."
elif [[ "$1" =~ ^[0-9\?]+$ ]]; then
    echo "Sure."
elif [[ "$1" =~ [A-Z] && ! "$1" =~ [a-z] ]]; then
    echo "Whoa, chill out!"
elif [[ "$1" =~ ^[0-9A-Z\',\?]+$ ]]; then
    echo "Calm down, I know what I'm doing"
elif [[ "$1" =~ [a-zA-Z] && "$1" =~ \!$ ]]; then
    echo "Whatever."
elif [[ "$1" =~ ^[0-9a-zA-Z[:space:]!:\?,\)]+$ ]]; then
    echo "Sure."
else
    echo "Whatever." 
fi
