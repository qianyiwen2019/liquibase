BUILDX_BUILDER=x-builder

if ! docker buildx inspect $BUILDX_BUILDER > /dev/null; then \
    echo "Buildx builder $BUILDX_BUILDER does not exist, creating..."; \
    docker buildx create --name=$BUILDX_BUILDER --use --driver=docker-container --platform linux/amd64,linux/arm64; \
else \
    echo "Buildx builder $BUILDX_BUILDER already exists"; \
fi

docker buildx build --tag apecloud/ape-dts-structure-checker:0.0.1 --platform linux/amd64,linux/arm64 --push .
# docker build --tag apecloud/ape-dts-structure-checker:0.0.1 .