IFS=$'\n'
for file in $(git ls-files --ignored --exclude-standard -o)
do
    pattern=$(git check-ignore -v "$file" | cut -f1)
    size=$(du -h "$file" | cut -f1)
    echo "File: $file, Ignore Pattern: $pattern, Size: $size"
done

