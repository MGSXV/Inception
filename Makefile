SRC_DIR := src
REQ_DIR := $(SRC_DIR)/requirements
NGINX_DIR := $(REQ_DIR)/nginx
DF := Dockerfile

nginx: nginx_build nginx_run
	

nginx_build: $(NGINX_DIR)
	@docker build -t nginx-img $(NGINX_DIR)

nginx_run: $(NGINX_DIR)
	@docker run -dp 80:80 nginx-img