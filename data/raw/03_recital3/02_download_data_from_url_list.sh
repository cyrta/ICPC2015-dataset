#!/bin/bash

FILE_URL_LIST="urls_all.list"
DIR_OUTPUT="./data/"



#youtube-dl.exe  --extract-audio --audio-format best  --write-description  --write-info-json  --write-annotations  --write-thumbnail  -o '${DIR_OUTPUT}/%(autonumber)s_%(title)s.%(ext)s' --batch-file ${FILE_URL_LIST}



# format:
#	22           mp4        1280x720   hd720 ,  mp4a.40.2, avc1.64001F (best)


youtube-dl.exe  --extract-audio -f 22  --write-description  --write-info-json  --write-annotations  --write-thumbnail -o "${DIR_OUTPUT}/%(title)s.%(ext)s" --batch-file ${FILE_URL_LIST}

