#!/bin/bash
pname=$(basename "$0")
usage="$pname [-h|--help]"
case "$1" in -*) echo "$usage"; exit 1;; esac
test $# -ne 0 && { echo "$usage"; exit 1;}

(
  test "$(basename $(pwd))" = apps || {
    test -d apps || { echo "apps: no such a directory here.">&2; exit 2;}
    cd apps
  }
  
  ls *.{apk,ab} | sed 's|\.apk$||;s|\.ab$||' | sort | uniq >../@list
)
