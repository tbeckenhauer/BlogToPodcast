podman build --build-arg UID=$(id -u) --build-arg GID=$(id -g) \
 -t tmbecken/blog_to_podcast .

podman login -u tmbecken -p $DOCKER_PASSWORD

docker push tmbecken/blog_to_podcast
