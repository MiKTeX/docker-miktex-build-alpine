#!/bin/sh

GROUP_ID=${GROUP_ID:-1001}
USER_ID=${USER_ID:-1001}

addgroup -g $GROUP_ID joe
adduser -u $USER_ID -D -G joe joe
export HOME=/home/joe
exec su-exec joe "$@"
