# config-service

## how to build and run
#### 1. build docker image
docker build -t config-server .

#### 2. run docker container
docker run -d -p 8888:80 --name config-server config-server 

## URL to check
http://localhost:8888/gamification/test
http://localhost:8888/gamification/dev
http://localhost:8888/gamification/prod