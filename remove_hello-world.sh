#!/bin/bash
# This script clears the terminal, and shows different ways of listing docker containers and images, 
# then removes hello-word container and image
clear									# clear terminal
docker ps  								# list active containers
docker ps -a  							# list all containers
docker ps -aq							# list all containers by their identifiers
docker rm $(docker ps -aq)				# nested docker command to remove/delete all non-active containers
docker images							# list all images
docker rmi hello-world					# remove image hello-world