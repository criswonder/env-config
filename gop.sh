#!/bin/sh

ffprobe -hide_banner -show_frames $1 |grep pict_type > gop_output.txt

GOP=0;
enter=0
index=0
#使用while读文件
while read p; do
  index=$((index+1))
  if [ "$p" = "pict_type=I" ]
  then
    enter=$((enter+1))
    if [ $enter -eq 1 ]
    then
      startIndex=$index
    fi

    if [ $enter -eq 2 ]
    then
      GOP=$((index-startIndex))
      break
    fi  
  fi
done < gop_output.txt

echo 'end while loop'
echo $GOP