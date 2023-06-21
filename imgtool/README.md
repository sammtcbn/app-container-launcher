# Usage

```
docker run --name imgtool --rm -it -v $(pwd):/home/mcu/workspace --workdir="/home/mcu/workspace" sammtcbn/imgtool:latest bash
```

# Release

## Publish image

Steps:
```
docker login
docker push sammtcbn/imgtool:latest
docker logout
```
