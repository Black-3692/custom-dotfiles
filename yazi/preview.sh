#!/usr/bin/env bash

case "$1" in
*.jpg | *.jpeg | *.png | *.webp)
    ueberzugpp layer --parser bash --silent <<EOF
    {
      "action": "add",
      "identifier": "preview",
      "path": "$1",
      "x": 0,
      "y": 0,
      "width": 40,
      "height": 20
    }
EOF
    ;;
esac
