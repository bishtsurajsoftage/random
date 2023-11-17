curl -s "https://api.github.com/users/bishtsurajsoftage/repos" | grep -E 'name|clone_url|created_at' | awk -F\" '{print $4,$8,$16}' | while read -r name clone_url created_at; do
    size=$(curl -s "https://api.github.com/repos/$username/$name" | grep -E 'size' | awk -F: '{print $2}' | tr -d ' ,')
    echo "$name $clone_url $created_at $size"
done

