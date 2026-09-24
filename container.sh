#!/bin/bash
set -e

docker rm -f hello-world web app-index 2>/dev/null || true

docker run --name hello-world -d nginx
docker exec hello-world ls /usr/share/nginx/html
docker logs hello-world

docker run --name web -d nginx
docker exec web ls /usr/share/nginx/html
docker logs web

docker run --name app-index -d -p 8000:8000 mit-projekt-image
docker exec app-index ls /app
docker logs app-index

docker stop hello-world web app-index
docker rm hello-world web app-index


