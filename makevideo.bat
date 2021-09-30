mv ./output*.mp4 ./Old
ffmpeg -y -stream_loop -1 -i VaporwaveBackground480p.mp4 -i .\Music\Output\combined.mp3 -fflags +shortest -max_interleave_delta 50000 -c copy -t 01:38:32 output.mp4