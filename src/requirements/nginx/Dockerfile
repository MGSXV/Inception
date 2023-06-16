FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nginx openssl
RUN nginx
WORKDIR /var/www/sel-kham/
COPY ./tools/index.html .
COPY ./tools/sel-kham.conf /etc/nginx/config.d/sel-kham.conf
# RUN nginx -  reload
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]