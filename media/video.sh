#!/bin/bash

# Dialog Do you wont do download videos?

apt install ffmpeg

name=1
mkdir video-out
ls .
cd video-in/
multNames=("https://multiki.arjlover.net/multiki/gustavus.and.a.long.life.avi" )

for video in ${multNames[@]};
do
wget $video
done
cd ../video-out

for file in ../video-in/*;
do
ffmpeg -i $file $name.webm
let name=name+1
done
cd ..
rm -rf video-in

# "https://multiki.arjlover.net/multiki/zagreb.okay.avi" "https://multiki.arjlover.net/multiki/zagreb.way.to.your.neighbour.avi" "https://multiki.arjlover.net/multiki/zagreb.the.wall.avi" "https://multiki.arjlover.net/multiki/zagreb.the.ceremony.avi" "https://multiki.arjlover.net/multiki/cat.s.story.avi" "https://multiki.arjlover.net/multiki/jak.sli.kremilek.a.vochomurka.na.parezy.avi" "https://multiki.arjlover.net/multiki/tolko.dlay.sobak.avi"