#!/bin/sh

course=$1
python3 parse.py $course > $course/videos.txt
