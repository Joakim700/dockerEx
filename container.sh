
set -e

CONATINER_NAME="hello-world"
docker run --name "hello-world" -d nginx
docker exec hello-world ls /usr/share/nginx/html
