# Vagrant with Nginx and PHP

## Setup

1. Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/)
2. Run `vagrant up` in this directory
3. Access the server at http://localhost:8080
4. Test PHP functionality at http://localhost:8080/info.php

## What's included

- Ubuntu 20.04 (Focal)
- Nginx web server
- PHP 7.4 with FPM
- Pre-configured Nginx and PHP integration

## Vagrant cli
- vagrant provision, for updating vagrant file

## NGINX BASIC
| Description                                              | Path/Folder              |
|----------------------------------------------------------|--------------------------|
| Nginx configuration files                                | `/etc/nginx`             |
| Main configuration file                                  | `/etc/nginx/nginx.conf`  |
| Virtual hosts configuration files (including default one) | `/etc/nginx/sites-enabled` |
| Custom configuration files                               | `/etc/nginx/conf.d`      |
| Log files (both access and error log)                    | `/var/log/nginx`         |
| Temporary files                                          | `/var/lib/nginx`         |
| Default virtual host files                               | `/usr/share/nginx/html`  |