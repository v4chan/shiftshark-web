#!/bin/bash

# root check
if [[ $(whoami) != "root" ]]; then
	echo -en "You must be root to install.\n"
	exit 1
fi

# vars
app="shifter"
owner="http"
group="http"
target="/srv/$app"

# make target
mkdir -p $target

# install to target
cp -r . $target

# set ownership of installed files
# ( but not target dir itself )
chown -R $owner:$group $target/*

# if necessary, set up symlinks
[[ ! -L /etc/systemd/system/unicorn_$app.service ]] &&
	ln -s $target/deploy/systemd/unicorn_$app.service \
		/etc/systemd/system/unicorn_$app.service || :

[[ ! -L /etc/nginx/servers/$app.conf ]] &&
	ln -s $target/deploy/nginx/$app.conf \
		/etc/nginx/servers/$app.conf || :
