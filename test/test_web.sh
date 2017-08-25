#!/bin/bash

set -e -u -x

OS=${OS:-osx}
WEBPORT=${WEBPORT:-80}
WEBPREFIX=${WEBPREFIX:-}

path=`dirname $0`

bash $path/../${OS}-ice${ICEVER}/run

sleep 5

curl -f -I http://localhost:${WEBPORT}${WEBPREFIX}/webclient/login/

curl -f -I http://localhost:4080${WEBPREFIX}/webclient/login/
