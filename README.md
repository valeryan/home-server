# Home Docker Server

My Docker configuration for a home server. 

## Whats Inside

1. An Nginx proxy server with LetsEncrypt intergrated
2. Nextcloud - personal cloud backup server
3. Plex - A media streaming server
4. Mineos - A web based minecraft server management gui
5. Mysql - A database server

## Setup

1. Copy example.env to .env and modify settings as desired. 
2. Run `docker-compose build` and `docker-compose up`.
3. (optional) setup the start up service included so that your docker services self start with the system. 
