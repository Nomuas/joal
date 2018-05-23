#!/bin/bash

set -e

# Create directories
mkdir -p /data/clients \
         /data/torrents

cp /default/clients/* /data/clients

if [ ! -f /data/config.json ]; then
	cp /default/config.json /data/
fi

java -jar /joal/joal.jar "$@"
