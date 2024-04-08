#!/bin/bash
docker pull nextcloud
docker run -d -p 8080:80 -v /home/$USER/nextcloud:/var/www/html nextcloud
