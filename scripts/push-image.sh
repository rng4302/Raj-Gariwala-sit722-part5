# Publishes a Docker image.

set -u # or set -o nounset
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$CONTAINER_REGISTRY"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book:$VERSION
docker push $CONTAINER_REGISTRY/inventory:$VERSION