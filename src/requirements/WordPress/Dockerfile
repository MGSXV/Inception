FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt install php7.3 php-mysql php-fpm curl mariadb-client -y
# WORKDIR /var/www/html/sel-kham
RUN mkdir -p /var/www/html/sel-kham
COPY tools/wp_install.sh /root
EXPOSE 9000
ENTRYPOINT ["bash", "/root/wp_install.sh"]
CMD ["php-fpm7.3", "-F"]