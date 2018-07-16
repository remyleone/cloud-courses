#!/bin/sh

# odoo installation

export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
tzdata tzdata/Areas select Europe
tzdata tzdata/Zones/Europe select Paris

apt-get update
apt-get install postgresql -y
apt-get install wkhtmltopdf
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/11.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
