#!/bin/bash

docker volume create db
docker volume create cap

cd docker


docker build . -t capanalysis_image 
docker rm -f cap_container

docker run -d -p 80:80 -p 9877:9877 -v db:/var/lib/postgresql -v cap:/opt/capanalysis  --name cap_container capanalysis_image

