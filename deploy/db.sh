#!/bin/bash

echo -e "$white :: Setting up database... :: $no_colour"
source ./.env
sudo -i -u postgres psql -c \
	"create role $SHIFTER_DB_USER with createdb login password '$SHIFTER_DB_PASS';"
rails db:create db:migrate
echo -e "$white :: Done! :: $no_colour"
