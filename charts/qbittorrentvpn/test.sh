#!/bin/bash
DIR=/Users/luiscarlos/Documents/Github/helm-charts/charts/qbittorrentvpn
numFiles=`ls $DIR | wc -l`
# echo $numFiles
if [[ $numFiles -gt 1 ]]  && [[ "$(curl -sL -w '%{http_code}' https://google.es -o /dev/null)" = "200"  ]];
then
  echo 0
else
  echo "Liveness failed!" 1>&2
  exit 1
fi