docker run --rm -it \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/snd \
  --device /dev/dri \
  --device /dev/video0 \
  --group-add audio \
  --group-add video \
  -v "${HOME}/.slack:/root/.config/Slack" \
  --ipc="host" \
  --name slack \
  jess/slack "$@"
