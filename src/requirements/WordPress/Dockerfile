FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt install php7.3 php-mysql php-fpm curl tar -y
WORKDIR /tmp

EXPOSE 9000
CMD ["bash"]