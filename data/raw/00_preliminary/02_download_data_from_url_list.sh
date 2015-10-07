#!/bin/bash

FILE_URL_LIST="urls_all.list"
DIR_OUTPUT="./data/"

youtube-dl.exe  --extract-audio --audio-format best  --write-description  --write-info-json  --write-annotations  --write-thumbnail  -o '${DIR_OUTPUT}/%(autonumber)s_%(title)s.%(ext)s' --batch-file ${FILE_URL_LIST}

