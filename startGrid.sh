#!/bin/sh

# start HUB
docker run -d -p 4444:4444 --name selenium-hub selenium/hub:latest

# start four nodes
docker run -d --name selenium-node-chrome-1 --link selenium-hub:hub selenium/node-chrome:latest
docker run -d --name selenium-node-chrome-2 --link selenium-hub:hub selenium/node-chrome:latest
docker run -d --name selenium-node-chrome-3 --link selenium-hub:hub selenium/node-chrome:latest
docker run -d --name selenium-node-chrome-4 --link selenium-hub:hub selenium/node-chrome:latest


