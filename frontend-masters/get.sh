#!/bin/sh

course=$1
mkdir -p $course && \
  python3 pages.py $course > $course/pages.csv
