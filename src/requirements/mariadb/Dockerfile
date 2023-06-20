FROM debian:buster
RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server expect
WORKDIR /home
COPY ./tools/sql_secure_install.exp .
COPY ./tools/init.sh .
EXPOSE 3306
ENTRYPOINT ["bash", "init.sh"] 
CMD ["bash"]