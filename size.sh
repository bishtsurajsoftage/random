#!/bin/bash

username="bishtsurajsoftage"

repo_info=$(curl -s "https://api.github.com/users/$username/repos")

echo "$repo_info" | grep -E 'name|clone_url|created_at' | awk -F\" '{print $4,$8,$16}' | while read -r name clone_url created_at; do
    size=$(curl -s "https://api.github.com/repos/$username/$name" | grep -E 'size' | awk '{print $2}')
    echo "$name $clone_url $created_at $size"
done

