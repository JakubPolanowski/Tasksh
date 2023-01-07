#!/bin/sh

# VARS

VERSION=0.0.1

NAME=$(basename "$0")
SHORT=h
LONG=help

# help

help() {
    # TODO
    echo TODO
    exit 0
}

default() (
    # TODO
    echo TODO
    exit 0
)

# PARSE CLI

OPTS=$(getopt -n "$NAME" -o $SHORT -l $LONG -- "$@")
if [ $? -ne -0 ]; then
    exit 1
fi

if [ "$#" -eq 0 ]; then
    default
fi

eval set -- "$OPTS"

while :; do
    case "$1" in 

    -h | --help)
        help
        ;;

    --)
        shift
        break
        ;;

    *)
        echo "Unexpected option: $1"
        help
        ;;

    esac
done

