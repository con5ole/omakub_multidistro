#!/bin/bash

while IFS= read -r line

do
  # Check if the line contains the pattern and branch accordingly
  if [[ "$line" =~ "Debian" ]]; then
    echo "Debian"
    break;
    fi
if [[ "$line" =~ "Ubuntu" ]]; then
    echo "Ubuntu"
    break;
  fi

done < /etc/os-release