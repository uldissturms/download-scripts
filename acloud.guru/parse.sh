#!/bin/sh

course=$1
res=1080p
cat $course/videos.json | jq -r '.data.getRestrictedFiles.urls[]' \
  | grep $res > $course/videos.txt
