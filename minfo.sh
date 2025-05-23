#!/bin/bash

##script: minfo.sh

if [ "$#" -ne 1 ]; then
    echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
    exit 1
fi

case "$1" in
    hostname)
        hostname
        ;;
    uptime)
        uptime -p
        ;;
    disk)
        df -h /
        ;;
    all)
        hostname
        uptime -p
        df -h /
        ;;
    *)
        echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
        exit 1
        ;;
esac
