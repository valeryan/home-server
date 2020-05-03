#!/bin/bash
docker-compose exec -u www-data nextcloud-app /var/www/html/occ $*