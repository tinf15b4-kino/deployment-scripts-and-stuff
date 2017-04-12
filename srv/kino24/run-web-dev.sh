#!/bin/bash

set -eu

jarfile="$HOME/kino-web-dev.jar"

exec /usr/bin/java -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=50 -jar "$jarfile"
