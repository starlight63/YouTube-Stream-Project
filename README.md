# YouTube-Stream-Project

This small video project allows for you to create a YouTube stream using ffmpeg for audio.

**Make sure you have ffmpeg installed!**

https://ffmpeg.org/download.html

**First, let's combine your audio files!**

Place your audio files in the Music/Source directory, run "combine.bat"

This will combine all mp3 files in that directory into a single, long mp3 file.

**Second, let's combine your long audio file with your video file using makevideo.bat**

Download the video file you want to loop, and name it "VaporwaveBackground480p.mp4".

The video file will loop for as long as the audio file you've created, but you will have to add a small adjustment to the batch file.

You'll need to adjust this line:
ffmpeg -y -stream_loop -1 -i VaporwaveBackground480p.mp4 -i .\Music\Output\combined.mp3 -fflags +shortest -max_interleave_delta 50000 -c copy -t 01:38:32 output.mp4

Where you see:
"-t 01:38:32"
replace it with:
"-t (the length of your combined audio file)"

Than, simply run makevideo.bat
This won't take too long, but it will depend on how good your hardware encoder is on your device.

**Let's get to streaming**

Finally, create a new file named "key.txt". Paste your stream key into this file, and than launch stream.bat
You can finally get to streaming right away!
