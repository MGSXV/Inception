FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nginx openssl
WORKDIR /var/www/html/
COPY /Users/sel-kham/Desktop/Inception/src/requirements/tools/static/index.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]