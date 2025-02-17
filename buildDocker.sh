docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) \
 -t tmbecken/blog_to_podcast .
DOCKER_PASSWORD_VAR=$(echo $DOCKER_PASSWORD | base64 -d)
docker login -u tmbecken -p $DOCKER_PASSWORD_VAR

docker push tmbecken/blog_to_podcast
