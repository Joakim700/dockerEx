
set -e

CONATINER_NAME="hello-world"
CONTAINER_NAME="web"

docker run --name "hello-world" -d nginx
docker exec hello-world ls /usr/share/nginx/html
docker logs hello-world

docker run --name "web" -d nginx
docker exec web ls /user/share/nginx/html
docker logs web
