# Release

## Bump version

If local docker image is ready for publishing to registry, need to change version.

## Publish image

Steps:
```
docker login
docker tag sammtcbn/zephyr_devbase:latest sammtcbn/zephyr_devbase:[NEW_VERSION]
docker push sammtcbn/zephyr_devbase:[NEW_VERSION]
docker logout
```

