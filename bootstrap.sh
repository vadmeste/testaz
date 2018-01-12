#!/bin/sh

if [ $# -lt 1 ]; then
        echo "USAGE: $0 download_url [optional arguments]"
        exit 0
fi

curl "$1" >/tmp/install.sh

shift;

/bin/bash /tmp/install.sh $@
