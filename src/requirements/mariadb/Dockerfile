FROM debian:buster
RUN groupadd -r mysql && useradd -r -g mysql mysql
RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server expect gettext-base procps
WORKDIR /home
COPY ./tools/sql_secure_install.exp .
COPY ./tools/init.sh .
COPY ./tools/50-server.cnf .
COPY ./tools/create_db.sql .
EXPOSE 3306
ENTRYPOINT [ "bash", "init.sh" ]
CMD ["mysqld_safe"]