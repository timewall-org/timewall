#!/bin/sh
while true; do
  sleep 1;
  if ! make -s -q ; then
    make -s -j && date && echo OK
  fi
done
