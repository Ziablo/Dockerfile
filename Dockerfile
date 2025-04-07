FROM jrottenberg/ffmpeg:4.3-ubuntu

CMD ffmpeg -re -i "${STREAM_URL}" \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -c:a aac -b:a 160k -ar 44100 \
  -f flv "rtmp://live.twitch.tv/app/${TWITCH_KEY}"
