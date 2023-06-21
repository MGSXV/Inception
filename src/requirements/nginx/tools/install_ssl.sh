#!/bin/bash
certs_dir="/etc/ssl/certificate/"
private_dir="/etc/ssl/private/"
cert_file="${certs_dir}nginx.crt"
key_file="${private_dir}nginx.key"

mkdir -p "$certs_dir"
mkdir -p "$private_dir"

if [ ! -f "$cert_file" ]; then
    openssl req -newkey rsa:4096 -x509 -nodes -days 365 \
        -out "$cert_file" \
        -keyout "$key_file" \
        -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/OU=Education/CN=sel-kham.42.fr"
fi
nginx -g 'daemon off;';