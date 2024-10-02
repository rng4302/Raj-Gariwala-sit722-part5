# Builds a Docker image.

set -u # or set -o nounset
: "$VERSION"
: "$CONTAINER_REGISTRY"

docker build -t $CONTAINER_REGISTRY/book:$VERSION --file ./book_catalog/Dockerfile ./book_catalog
docker build -t $CONTAINER_REGISTRY/inventory:$VERSION --file ./inventory_management/Dockerfile ./inventory_management