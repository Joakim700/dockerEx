
set -e

CONATINER_NAME="hello_world"
docker run --name "hello_world" -d nginx
docker exec web ls /docker-entrypoint.sh
