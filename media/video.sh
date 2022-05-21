#!/bin/bash

# Dialog Do you wont do download videos?

name=1
mkdir video-out

cd video-in
multNames=("https://multiki.arjlover.net/info/sport.sport.sport.avi" "https://multiki.arjlover.net/info/gustavus.and.a.long.life.avi" "https://multiki.arjlover.net/info/zagreb.okay.avi" "https://multiki.arjlover.net/info/zagreb.way.to.your.neighbour.avi" "https://multiki.arjlover.net/info/zagreb.the.wall.avi" "https://multiki.arjlover.net/info/zagreb.the.ceremony.avi" "https://multiki.arjlover.net/info/cat.s.story.avi" "https://multiki.arjlover.net/info/jak.sli.kremilek.a.vochomurka.na.parezy.avi" "https://multiki.arjlover.net/info/tolko.dlay.sobak.avi" "https://multiki.arjlover.net/info/tuda.i.obratno.avi")

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
