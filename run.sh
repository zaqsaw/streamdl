#!/bin/bash

# Downloads m3u8 stream to /tmp/stream.mp4

m3u8=$1
name=$2
DOCKER_PROCESS=$(docker run --volume /tmp:/app/download --env M3U8=${m3u8} --env NAME=/app/download/${name} --env EXT='mp4' -d streamdl:latest)
docker logs -f ${DOCKER_PROCESS}

