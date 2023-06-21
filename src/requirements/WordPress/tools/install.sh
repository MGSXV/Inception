#!/bin/bash

directory="/var/www/html/wordpress"
if [ ! -d $directory ]
then
	curl -LO https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	
fi