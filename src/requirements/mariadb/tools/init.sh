#!/bin/sh
directory="/var/lib/mysql/wordpress"
service mysql start
if [ ! -d $directory ]
then
	chmod +x sql_secure_install.exp
	./sql_secure_install.exp > /dev/null
	mv /etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf.default
	mv /home/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
	rm -rf 50-server.cnf
	service mysql reload
fi
service mysql stop
exec "$@"