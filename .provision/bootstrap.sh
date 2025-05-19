#!/usr/bin/env bash

# Update repositories
apt-get update

# Install PHP and dependencies
apt-get install -y php-fpm php-mysql

# Install nginx
apt-get -y install nginx

# Make sure /etc/nginx/sites-enabled/default is removed to avoid conflicts
rm -f /etc/nginx/sites-enabled/default

# Copy nginx configuration
cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
chmod 644 /etc/nginx/sites-available/site.conf

# Create symbolic link if it doesn't exist
if [ ! -f /etc/nginx/sites-enabled/site.conf ]; then
    ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
fi

# Make sure app directory exists
mkdir -p /vagrant/app

# Clean /var/www
rm -Rf /var/www

# Symlink /var/www => /vagrant
ln -s /vagrant /var/www

# Restart services
service php-fpm restart
service nginx restart

# Output status to verify everything is working
echo "Nginx status:"
systemctl status nginx --no-pager