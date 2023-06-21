FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt-get install nginx openssl -y
RUN rm -rf /etc/nginx/sites-enabled/default
WORKDIR /var/www/html/sel-kham
COPY ./tools/index.html .
COPY ./tools/sel-kham.conf /etc/nginx/sites-enabled/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 443