#!/bin/bash
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = wordpress:9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
chmod -R 775 /var/www/html/sel-kham;
chown -R www-data /var/www/html/sel-kham;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;


if [ ! -f /var/www/html/sel-kham/wp-config.php ]; then
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html/sel-kham;

wp core download --allow-root;
mv /tmp/wp-config.php /var/www/html/sel-kham;
wp core install --allow-root --url=sel-kham.42.fr --title=${WORDPRESS_NAME} --admin_user=${WORDPRESS_ROOT_LOGIN} --admin_password=${DB_ROOT_PASSWORD} --admin_email=${WORDPRESS_ROOT_EMAIL};
wp user create ${MYSQL_USER} ${WORDPRESS_USER_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root;
wp plugin update --all --allow-root
else
echo "Wordpress: is already set up!"
fi
/usr/sbin/php-fpm7.3 -F