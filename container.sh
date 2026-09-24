
set -e

CONATINER_NAME="hello_world"
docker run --name "hello_world" -d nginx
docker exec e65941aca6f6 ls /usr/share/nginx/html
