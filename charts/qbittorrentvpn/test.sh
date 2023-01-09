#!/bin/bash
DIR=/data/torrenting
if [[ -d "$DIR" ]]  && [[ "$(curl -sL -w '%{http_code}' http://localhost:8080 -o /dev/null)" = "200"  ]];
then
  echo 0
else
  echo "Liveness failed!" 1>&2
  exit 1
fi