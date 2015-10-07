
#!/bin/bash

#URL_PLAYLIST=$0
URL_PLAYLIST='https://www.youtube.com/playlist?list=PLTmn2qD3aSQuKEzTQr8vFzf8B_fHXiQYW'

youtube-dl.exe -j --flat-playlist ${URL_PLAYLIST} | jq -r '.id' | sed 's_^_https://youtube.com/v/_' > urls_all.list
