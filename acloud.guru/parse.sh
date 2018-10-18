#!/bin/sh

course=$1
cat $course/videos.json | jq -r '.data.getRestrictedFiles.urls[]' | grep 1080 > $course/videos.txt
