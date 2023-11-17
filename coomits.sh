#!/bin/bash

# Iterate over local branches
for branch in $(git for-each-ref --format='%(refname:short)' refs/heads/); do
    commit_count=$(git rev-list --count $branch)
    last_commit=$(git log -1 --format='%cd - %s - %h' --date=relative $branch)

    # Print branch details with commit count
    echo "$branch - $last_commit ($commit_count commits)"
done

