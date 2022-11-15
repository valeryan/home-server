# Home Docker Server

My Docker configuration for a home server. 

## What’s Inside

1. Web Server - Nginx proxy server with Lets Encrypt integrated
1. MySql - A database server
1. Redis - caching server

## Additional Modules

1. [Mineos](https://github.com/valeryan/home-server-mineos) - Minecraft hosting server gui
1. [Nextcloud](https://github.com/valeryan/home-server-nextcloud) - Personal cloud backup server
1. [Jellyfin](https://github.com/valeryan/home-server-jellyfin) - A media streaming server

## Setup

1. Copy example.env to .env and modify settings as desired. 
1. Run `docker-compose build` and `docker-compose up`.
