course=$1
ext=mp4
playlist=${course}/playlist.m3u

function urlencode {
  echo $(node -e "console.log(encodeURIComponent(process.argv[1]))" "$1")
}

echo '#EXTM3U' > $playlist

./titles.sh $course | \
while read title
  do
    fullname=${title}.$ext
    echo "#EXTINF:0,$fullname"
    echo $(urlencode "$fullname")
  done >> $playlist
