SRC_DIR		:= src
DC 			:= docker-compose.yaml

all: $(SRC_DIR)/$(DC)
	@docker-compose -f $(SRC_DIR)/$(DC) up
