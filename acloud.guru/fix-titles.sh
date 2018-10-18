#!/bin/zsh

course=$1
cat $course/titles.json \
  | jq -r '.data.getCourses[].sections[].components[] | [.componentIdentifier, .title] | @tsv' \
  | while read id title
    do
      mv "$course/$id" "$course/${title}.mp4"
    done
