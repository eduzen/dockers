#!/bin/bash

exec docker run --rm \
 --gpus all \
 --runtime=nvidia \
 --name jellyfin \
 -v ${HOME}/Docker/jellyfin/configs/jellyfin:/config \
 -v /media/eduzen/sambita/media-center/downloads/:/data:z \
 -v /media/eduzen/sambita/media-center/downloads/completed/movies:/movies:z \
 -v /media/eduzen/sambita/media-center/downloads/completed/tv:/tv:z \
 -e TZ=${TZ} \
 -e PUID=${PUID} \
 -e PGID=${PGID} \
 -e UMASK=${UMASK} \
 -e NVIDIA_DRIVER_CAPABILITIES=all \
 -e NVIDIA_VISIBLE_DEVICES=all \
 -e JELLYFIN_PublishedServerUrl=jelly.${DOMAIN} \
 -p 8096:8096 \
 -p 8920:8920 \
 -p 7359:7359/udp \
 -p 1900:1900/udp \
 ghcr.io/linuxserver/jellyfin:10.7.6-1-ls129
