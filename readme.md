# Readme

## development setup
```
sudo pacman -S ruby postgresql
gem install bundler rails
bundle install --path vendor/bundle
sudo -i -u postgres initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
sudo -i -u postgres psql -c "create role shifter with createdb login password 'shifter';"
rails db:create db:migrate
```

## deployment
(for archlinux only)

```
deploy/setup.sh
sudo deploy/install.sh
```
