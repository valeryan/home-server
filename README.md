# Home Docker Server

My Docker configuration for a home server. 

## What’s Inside

1. An Nginx proxy server with Lets Encrypt integrated
2. Nextcloud - personal cloud backup server
3. Plex - A media streaming server
4. Mineos - A web based Minecraft server management gui
5. MySql - A database server

## Setup

1. Copy example.env to .env and modify settings as desired. 
2. Run `docker-compose build` and `docker-compose up`.
3. (optional) setup the startup service included so that your docker services self-start with the system.
