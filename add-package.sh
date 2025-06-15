#!/usr/bin/env bash

set -o errexit

PACKAGE_NAME=$1

if [ -z "$PACKAGE_NAME" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

git submodule add ssh://aur@aur.archlinux.org/$PACKAGE_NAME.git $PACKAGE_NAME

# git submodule update --init --recursive
