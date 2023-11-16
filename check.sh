#!/bin/bash

git for-each-ref --format='%(color:red)%(refname:short)%(color:reset) - %(contents:subject) (%(committername))
Author: %(authorname) <%(authoremail)>
Date: %(authordate:relative)
Commit: %(committerdate:relative)
' refs/remotes/ | while read -r line; do
  echo "$line" | sed -E 's/%\{[^}]+%\}/ /g'  # Remove unsupported color codes
  echo  # Add an empty line between entries
done

