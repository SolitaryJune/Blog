#! /bin/bash

result=$(cd /root/elmagnificogi.github.io && git pull origin master | grep "Already up-to-date" )
if [[ "$result" != "" ]]
then
  exit 0
  #echo "`date '+%Y%m%d %H:%M'`:����Ҫ���´���"
else
  echo "`date '+%Y%m%d %H:%M'`: post update,start build"
  result=$(jekyll build --source /root/elmagnificogi.github.io --destination /usr/share/nginx/html)
  echo "`date '+%Y%m%d %H:%M'`: build over"
  #
fi