#!/bin/sh

course=$1

src=$course/videos.txt 
tmp=$course/videos.txt.tmp

uniq $src > $tmp
mv $tmp $src

python3 download.py $course
