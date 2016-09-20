#!/bin/bash

white="\[\e[1;37m\]"
no_colour="\[\e[0m\]"

echo -e "$white :: Installing ruby... :: $no_colour"
pacman -Qi ruby &> /dev/null
[[ $? != 0 ]] &&
	sudo pacman -Syu ruby || :

echo -e "$white :: Installing pacgem... :: $no_colour"
yaourt -Sa pacgem

echo -e "$white :: Installing rails and unicorn... :: $no_colour"
yes | pacgem 'rails~>5.0.0' 'unicorn~>5.1'

echo -e "$white :: Installing bundler and building bundle... :: $no_colour"
gem install bundler
bundle install --path vendor/bundle

echo -e "$white :: Setting up database... :: $no_colour"
sudo -i -u postgres initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
sudo -i -u postgres psql -c "create role shifter with createdb login password 'shifter';"
rails db:create db:migrate

echo -e "$white :: Done! :: $no_colour"
