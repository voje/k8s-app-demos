#!/bin/sh

# Inject some ENV variables into index.html
sed -i "s/SED_POD_ID/$POD_ID/g" /srv/index.html

echo "[*] Starting Nginx"
# Start nginx
nginx

sleep inf
