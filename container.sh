set -e

CONATINER_NAME="hello-world"
CONTAINER_NAME="web"
CONTAINER_NAME="index.html"

docker run --name "hello-world" -d nginx
docker exec hello-world ls /usr/share/nginx/html
docker logs hello-world

docker run --name "web" -d nginx
docker exec web ls
docker logs web

docker run --name "index.html" -d nginx

docker stop hello-world
docker stop web

docker rm hello-world
docker rm web



