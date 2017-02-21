ffmpeg \
-loop 1 -thread_queue_size 512 -i sl2.png \
-thread_queue_size 512 -f avfoundation -i ":0" \
-r 30 -g 60 -keyint_min 60 \
-c:v libx264 -pix_fmt yuv420p \
-x264opts "keyint=60:min-keyint=60:no-scenecut" \
-s 'hd720' -tune zerolatency \
-c:a aac -b:a 128k  -ar 44100 \
-f flv rtmp://a.rtmp.youtube.com/live2/$Stream-key
