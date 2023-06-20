#!/bin/sh

service mysql start
chmod +x sql_secure_install.exp
./sql_secure_install.exp
exec "$@"