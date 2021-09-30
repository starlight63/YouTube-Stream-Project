(for %%i in (*.mp3) do @echo file '%%i') > mylist.txt

ffmpeg -f concat -safe 0 -i mylist.txt -c copy ../Output/combined.mp3