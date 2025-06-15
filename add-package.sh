#!/usr/bin/env bash

set -o errexit

PACKAGE_NAME=$1

if [ -z "$PACKAGE_NAME" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

git remote add $PACKAGE_NAME ssh://aur@aur.archlinux.org/$PACKAGE_NAME.git

git subtree add --prefix $PACKAGE_NAME $PACKAGE_NAME master --no-squash
