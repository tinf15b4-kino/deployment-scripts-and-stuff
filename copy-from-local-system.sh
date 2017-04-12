#!/bin/sh
cd "$(dirname "$0")"

mkdir -p ./etc/systemd/system
mkdir -p ./srv/kino24
mkdir -p ./JENKINS_HOME

cp /etc/systemd/system/kino24* ./etc/systemd/system
cp /srv/kino24/run-*.sh ./srv/kino24
(wd=$(pwd -P); cd /srv/jenkins; find . -maxdepth 3 -name 'config.xml' -exec cp --parents '{}' "$wd/JENKINS_HOME" \;)
