docker run -d -v /etc/localtime:/etc/localtime:ro --device /dev/snd --device /dev/dri -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0 --name vlc
