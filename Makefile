SRC_DIR		:= src
REQ_DIR		:= $(SRC_DIR)/requirements
NGINX_DIR	:= $(REQ_DIR)/nginx
WP_DIR		:= $(REQ_DIR)/WordPress
DF 			:= Dockerfile

nginx: nginx_build nginx_run
	

nginx_build: $(NGINX_DIR)/$(DF)
	@docker build -t nginx-img $(NGINX_DIR)

nginx_run: $(NGINX_DIR)/$(DF)
	@docker run -dp 80:80 nginx-img

wp: wp_build wp_run

wp_build: $(WP_DIR)/$(DF)
	@docker build -t wp-img $(WP_DIR)

wp_run: $(WP_DIR)/$(DF)
	@docker run -it wp-img bash