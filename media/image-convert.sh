#!/bin/bash

apt install -y imagemagick

mkdir photo-out

cd photo-in

name=1

for image in *.*;
do
convert "$image" -quality 30 ../photo-out/$name.jpg
echo "$image"
let name=name+1
done

cd ..
rm -rf photo-in