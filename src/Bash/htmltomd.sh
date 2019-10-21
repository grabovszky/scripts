FILES=*.html

for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.md"
  `pandoc $f -t markdown -o ../mds/$filename.md`

  # rm $fs --uncomment to delete original
done