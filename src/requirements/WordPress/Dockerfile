FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt install php7.3 php-mysql php-fpm curl mariadb-client -y
RUN mkdir -p /var/www/html/sel-kham
COPY tools/wp_install.sh /root
COPY tools/www.conf /etc/php/7.3/fpm/pool.d/
EXPOSE 9000
ENTRYPOINT ["bash", "/root/wp_install.sh"]
CMD ["php-fpm7.3", "-F"]