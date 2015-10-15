
#!/bin/bash

#URL_PLAYLIST=$0
#stage 3 recordings, each for one piece
URL_PLAYLIST='https://www.youtube.com/playlist?list=PLTmn2qD3aSQuQYJmmlNtkLUVowCnG48el'

youtube-dl.exe -j --flat-playlist ${URL_PLAYLIST} | jq -r '.id' | sed 's_^_https://youtube.com/v/_' > urls_all.list
