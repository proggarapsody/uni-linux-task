#!/bin/bash

# Dialog Do you wont do download videos?

apt install ffmpeg

name=1
mkdir video-out
mkdir video-in
ls .
cd video-in/
multNames=("https://www.pexels.com/video/5868771/download/?h=240&w=426 https://www.pexels.com/video/854104/download/?h=360&w=640 " )

for video in ${multNames[@]};
do
wget $video
done
cd ../video-out

for file in ../video-in/*;
do
ffmpeg -i "$file" $name.webm
let name=name+1
done
cd ..
rm -rf video-in

# https://www.pexels.com/video/1826150/download/?h=360&w=640 https://www.pexels.com/video/1994828/download/?h=360&w=640 https://www.pexels.com/video/2034291/download/?h=360&w=640 https://www.pexels.com/video/1551380/download/?h=676&w=540 https://www.pexels.com/video/855591/download/?h=360&w=640 https://www.pexels.com/video/854197/download/?h=360&w=640 https://www.pexels.com/video/2282012/download/?h=240&w=426 https://www.pexels.com/video/5825806/download/?h=640&w=360