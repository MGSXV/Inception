# Inception 📝
This project is a part of 42Network cursus, and it aims to broaden the knowledge of system administration by using Docker. You will virtualize several Docker images.
  
## General guidelines 💬
This project consists in having you set up a small infrastructure composed of different services under specific rules.
* Each Docker image must have the same name as its corresponding service.
* Each service has to run in a dedicated container.
* For performance matters, the containers must be built either from the penultimate stable version of Alpine or Debian.
* You also have to write your own ``Dockerfiles``, one per service. The ``Dockerfiles`` must be called in your ``docker-compose.yml`` by your ``Makefile``.

## Project specifications 🚧
You set up a small infrastructure composed of different services under specific rules.
* A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
* A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
* A Docker container that contains MariaDB only without nginx.
* A volume that contains your WordPress database.
* A second volume that contains your WordPress website files.
* A docker-network that establishes the connection between your containers.
### Note ⚠️
- Of course, using network: host or --link or links: is forbidden.
- The network line must be present in your docker-compose.yml file.
- Your containers musn’t be started with a command running an infinite loop. Thus, this also applies to any command used as entrypoint, or
used in entrypoint scripts.
- The following are a few prohibited hacky
patches: ``tail -f``, ``bash``, ``sleep infinity``, ``while true``.