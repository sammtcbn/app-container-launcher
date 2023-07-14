# Pull image

Run command: (not yet)
```
docker run -it sammtcbn/intel-pfr-signing-utility bash
```

# Release

## Publish image

Steps:
```
docker login
docker push sammtcbn/intel-pfr-signing-utility:latest
docker logout
```

# Usage

Run following command in host to log on container:
```
docker run --name intel-pfr-signing-utility --rm -it -v $(pwd):/home/intel/workspace --workdir="/home/intel/workspace" sammtcbn/intel-pfr-signing-utility bash
```

Then intel-pfr-signing-utility is available in container /bin
