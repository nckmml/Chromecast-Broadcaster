#!/usr/bin/env bash
if [ $CHROMECASTIP = "None" ]
then
        echo "Please define \$CHROMECASTIP"
        exit 1
fi
static_upnp --config-dir /data/config/Chromecast

