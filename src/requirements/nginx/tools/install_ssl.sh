#!/bin/bash
if [ ! -f /etc/ssl/certs/nginx.crt ]; then
openssl req -newkey rsa:4096 -x509 -nodes -days 365  \
		-out /etc/ssl/certs/nginx.crt \
		-keyout /etc/ssl/private/nginx.key \
		-subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/OU=Education/CN=sel-kham.42.fr";
fi
nginx -g 'daemon off;';