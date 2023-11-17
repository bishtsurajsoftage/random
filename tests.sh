for remote in $(git remote); do
    echo "Remote: $remote"
    git ls-remote --heads $remote
    echo "------------------------"
done

