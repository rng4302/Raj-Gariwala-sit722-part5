# Deploys a microservice to Kubernetes.
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

echo "Deploying image: week9task2.azurecr.io/$NAME:$VERSION"

# Update the image tag in the Kubernetes deployment file
sed -i "s|image: $CONTAINER_REGISTRY/book:.*|image: $CONTAINER_REGISTRY/book:$VERSION|g" ./scripts/kubernetes/deployment.yaml
sed -i "s|image: $CONTAINER_REGISTRY/inventory:.*|image: $CONTAINER_REGISTRY/inventory:$VERSION|g" ./scripts/kubernetes/deployment.yaml
# Apply the Kubernetes configuration
kubectl apply -f ./scripts/kubernetes/deployment.yaml