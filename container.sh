
set -e

CONATINER_NAME="hello-world"
docker run --name "hello-world" -d nginx
docker exec hello-world ls /usr/share/nginx/html
docker logs hello-world

docker exec "hello-world2" ls /user/share/nginx/html
docker logs hellow-world2
