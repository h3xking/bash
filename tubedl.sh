!#/bin/bash
clear
figlet Tube-Dl
echo "==============Tube-Loader-Bash==============="

echo "Enter The URL"
read u
echo "1. Press 1 to download MP3 Version"
echo "2. Press 2 to download HD Video"
read c
if [ $c -eq 1 ]; then
    if [ -d ~/Desktop/mp3 ]; then
	youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $u
	mv *.mp3 ~/Desktop/mp3/
     else
	mkdir ~/Desktop/mp3
        youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $u
        mv *.mp3 ~/Desktop/mp3/
     exit 
	fi
elif [ $c -eq 2 ]; then
  	if [ -d ~/Desktop/entertainment ]; then
	youtube-dl $u
        mv *.mp4 ~/Desktop/entertainment/
      else 
	mkdir ~/Desktop/entertainemtn/
	youtube-dl $u
        mv *.mp4 ~/Desktop/entertainment/
      exit 
	fi
else 
echo "You entered Wrong Choice or check the URL"

exit 
fi
