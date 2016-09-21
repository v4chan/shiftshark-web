#!/bin/bash

echo -e "$white :: Setting up database... :: $no_colour"
source ./.env
sudo -i -u postgres psql -c \
	"create role shifter with createdb login password 'shifter';"
rails db:create db:migrate
echo -e "$white :: Done! :: $no_colour"
