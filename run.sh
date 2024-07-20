#!/bin/bash

BUILD=0
INSTALL_VENV=0
while [ $# -gt 0 ] ; do
    case $1 in
        -b)
            BUILD=1
            CONTAINER_NAME="itb_build"
            ;;
        --install-venv)
            INSTALL_VENV=1
            ;;
    esac
    shift
done

if [ $INSTALL_VENV -eq 1 ]; then
    echo "Installing virtual environment"
    python3 -m venv venv
    echo "Installing dependencies"
    ./venv/bin/pip install -r requirements.txt
    echo "Installing this package"
    ./venv/bin/pip install -e .
fi

COMMAND="serve --watch-theme"
if [ $BUILD -eq 1 ]; then
    COMMAND="build"
fi

./venv/bin/mkdocs $COMMAND
