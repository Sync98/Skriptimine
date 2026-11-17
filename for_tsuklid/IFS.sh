text="one,two,three"
IFS=','
for word in $text; do
	echo "Sõna: $word"
done

