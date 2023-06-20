# Usage

```
docker run --name socsec --rm -it -v $(pwd):/home/ast/workspace --workdir="/home/ast/workspace" sammtcbn/socsec:latest bash
```

# Release

## Publish image

Steps:
```
docker login
docker push sammtcbn/socsec:latest
docker logout
```
