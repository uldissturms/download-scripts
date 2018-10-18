#!/bin/zsh

course=$1
res=1080p

echo 'component count:' $(
  cat $course/titles.json \
    | jq -r '.data.getCourses[].sections[].components[].componentIdentifier' \
    | wc -l
)
echo 'video count:' $(
    cat $course/videos.json \
    | jq -r '.data.getRestrictedFiles.urls[]' | grep $res \
    | wc -l
)
echo 'parsed count:' $(
    wc -l $course/videos.txt
)
echo 'downloaded count:' $(
    ls $course/*.mp4 | wc -l
)
