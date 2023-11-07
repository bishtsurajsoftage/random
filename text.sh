# Get the commit hash for the tag (e.g., "v1.0")
commit_hash=$(git rev-list -n 1 v2.0)

# View the commit details (including author information) for the specific commit
git log -n 1 --pretty=format:"%h %an <%ae> %ad %s" $commit_hash

# Use the commit hash to view the differences between the commit and the tag
git diff $commit_hash $(git rev-list -n 1 v2.0) --name-status

