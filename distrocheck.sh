#!/bin/bash

while IFS= read -r line

do
  # Check if the line contains the pattern and branch accordingly
  if [[ "$line" =~ "Debian" ]]; then
    # Perform some action
    echo "Debian"
    break;
    fi
if [[ "$line" =~ "Ubuntu" ]]; then
    # Perform some action
    echo "Ubuntu"
    break;
  fi

done < /etc/*-release