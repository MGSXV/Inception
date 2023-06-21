SRC_DIR		:= src
DC 			:= docker-compose.yaml

.PHONY: all up down build re

all: $(SRC_DIR)/$(DC) up

up: build
	-@docker-compose -f $(SRC_DIR)/$(DC) up

build:
	-@mkdir -p /home/${USER}/data/db
	-@mkdir -p /home/${USER}/data/wp
	-@docker-compose -f $(SRC_DIR)/$(DC) build

down:
	-@docker-compose -f $(SRC_DIR)/$(DC) down

clean: down
	-@docker rmi -f $$(docker images -qa)
	-@docker volume rm $$(docker volume ls -q)
	-@docker system prune -af
	-@sudo rm -rf /home/${USER}/data/

re: clean all