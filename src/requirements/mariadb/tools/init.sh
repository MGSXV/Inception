#!/bin/sh
directory="/var/lib/mysql/wordpress"
if [ ! -d $directory ]
then
	echo "init db..."
	mysql_install_db
	/etc/init.d/mysql start
	chmod +x sql_secure_install.exp > /dev/null
	./sql_secure_install.exp 
	cat create_db.sql | envsubst | mysql -uroot 
	mv /etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf.default
	mv /home/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
	rm -rf 50-server.cnf
	mysqladmin -uroot -p$DB_ROOT_PASSWORD  shutdown
fi
chown -R mysql:mysql /var/lib/mysql/
exec "$@"