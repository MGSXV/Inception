SRC_DIR		:= src
DC 			:= docker-compose.yaml

.PHONY: all up down build re

all: $(SRC_DIR)/$(DC) build

build:
	# @mkdir -p /home/${USER}/data/database
	# @mkdir -p /home/${USER}/data/wordpress
	# @mkdir -p /home/${USER}/data/webserver
	@docker-compose -f $(SRC_DIR)/$(DC) build

up:
	@docker-compose -f $(SRC_DIR)/$(DC) up

down:
	@docker-compose -f $(SRC_DIR)/$(DC) down

clean: down
	# @docker rmi -f $$(docker images -qa)
	# @docker volume rm $$(docker volume ls -q)
	@docker system prune -af
	# @rm -rf /home/${USER}/data/

re: clean all