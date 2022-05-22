#!/bin/bash

# Dialog Do you wont do download videos?

apt install ffmpeg

name=1
mkdir video-out
mkdir video-in
ls .
cd video-in/
multNames=("https://player.vimeo.com/progressive_redirect/download/583630341/container/2858b9ad-f7f6-4e22-95f2-22efa2bc1e01/c314e049/waterways_through_coastal_rocks%20%28240p%29.mp4?expires=1653298355&loc=external&oauth2_token_id=1106197694&signature=349bdcc8f23ff04fbd2c046c06d36e8f3372147d6c5adea0485539042addfc0f https://player.vimeo.com/progressive_redirect/download/187201533/container/03182179-02be-4f58-8389-cb854f23e0f0/54e2d425/bridge_activity%20%28360p%29.mp4?expires=1653298428&loc=external&oauth2_token_id=1106197694&signature=7c0c7f23a9885fe8a4875bbe178488d010f7e2f23b3d0847a8bf0199ab68ee95 https://player.vimeo.com/progressive_redirect/download/204256063/container/3f887e2b-f987-4110-9abf-5d11cd681ef9/e681cb30/tramway_vs_street%20%28540p%29.mp4?expires=1653298467&loc=external&oauth2_token_id=1106197694&signature=0c35f6da72402aaae78f9b368db4d970f6d558f78243e8fe2a35da7dea5b958a https://player.vimeo.com/progressive_redirect/download/157472333/container/34384a96-f6dd-4b9b-9924-6056ee8d23d9/9f38af12/sloping_street%20%28540p%29.mp4?expires=1653298503&loc=external&oauth2_token_id=1106197694&signature=fbf400180cde1dc3b44d4aa9e3c200feb701ae249b5e14093636cb1cae0d55b8 https://player.vimeo.com/progressive_redirect/download/136202264/container/e25f8107-fe8f-4d08-8779-2963901c3a4a/8e49909b/run_the_city%20%28360p%29.mp4?expires=1653298537&loc=external&oauth2_token_id=1106197694&signature=d67f285b0381bc3119b69d81c2b7286942f8e3995961a2bbf3b5ae158a47a5b0" )

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