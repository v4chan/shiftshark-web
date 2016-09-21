# ShiftShark

## development setup (archlinux)

```bash
deploy/setup.sh
deploy/db.sh
```

## deployment (archlinux)
First install the app. Replace `target.env` with the desired env file.

```bash
ln -sf target.env .env
deploy/setup.sh
deploy/db.sh
sudo deploy/install.sh
```

Configure systemd.

```bash
sudo systemctl enable unicorn_shifter
sudo systemctl start unicorn_shifter
```

If necessary, configure nginx.

```bash
cp deploy/nginx/nginx.conf /etc/nginx/
ln -s /etc/nginx/servers/shifter.conf /etc/nginx/servers_enabled/
```
