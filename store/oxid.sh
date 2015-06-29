#!/bin/sh

cd $(dirname $0)

echo "Setting up vhost..."
sudo cp oxid.conf /etc/nginx/sites-available/oxid.ongr.dev.conf
sudo ln -s /etc/nginx/sites-available/oxid.ongr.dev.conf /etc/nginx/sites-enabled/oxid.ongr.dev.conf
sudo nginx -s reload

curl -O https://raw.githubusercontent.com/proudcommerce/oxid-installer/master/pc_oxid-installer.sh
chmod +x pc_oxid-installer.sh

echo "CREATE DATABASE IF NOT EXISTS ongr;" | mysql -u root -proot

echo "CE-4.9.2\n/var/www/store/oxid\nhttp://oxid.ongr.dev\n\ntrue\ntrue\nlocalhost\nroot\nroot\nongr\ntrue" | ./pc_oxid-installer.sh

rm pc_oxid-installer.sh

php GenerateSeo.php
