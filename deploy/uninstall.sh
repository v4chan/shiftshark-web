#!/bin/bash

# root check
if [[ $(whoami) != "root" ]]; then
	echo -en "You must be root to install.\n"
	exit 1
fi

# vars
app="shifter"
target="/srv/$app"

# remove install
rm -rf \
	$target \
	/etc/systemd/system/unicorn_$app.service \
	/etc/nginx/servers/$app.conf
