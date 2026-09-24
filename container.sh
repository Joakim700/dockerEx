
set -e

CONATINER_NAME="hello_world"
docker run --name "hello_world" -d nginx
docker exec hello-world ls /usr/share/nginx/html
