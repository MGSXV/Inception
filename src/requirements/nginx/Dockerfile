FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt-get install nginx openssl -y
RUN rm -rf /etc/nginx/sites-enabled/default
RUN mkdir /etc/ssl/certificate/
RUN openssl req -newkey rsa:4096 -x509 -nodes -days 365 -out "/etc/ssl/certificate/nginx.crt" -keyout "/etc/ssl/private/nginx.key" -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/OU=Education/CN=sel-kham.42.fr"
WORKDIR /var/www/html/sel-kham
COPY ./tools/sel-kham.conf /etc/nginx/sites-enabled/
COPY ./tools/install_ssl.sh /home/
EXPOSE 443
CMD [ "nginx", "-g", "daemon off;"]