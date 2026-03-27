#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Harsh Vardhan Singh

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "---------------------------"

if command -v $PACKAGE >/dev/null 2>&1
then
    echo "$PACKAGE is installed."
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Package description:"

case $PACKAGE in
    git)
        echo "Git: Distributed version control system used for tracking code changes."
        ;;
    python)
        echo "Python: Popular open-source programming language."
        ;;
    apache2)
        echo "Apache: Open-source web server software."
        ;;
    *)
        echo "No description available."
        ;;
esac