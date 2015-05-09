#!/bin/bash

# Replace env placeholder in vhost
[ -z "${NGINX_RESPONSE}" ] && echo "\$NGINX_RESPONSE is not set" || sed -i "s/NGINX_RESPONSE/${NGINX_RESPONSE}/" /etc/nginx/sites-available/default

# Start nginx
/usr/sbin/nginx
