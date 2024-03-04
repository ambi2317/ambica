if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
        exit 1
	fi

	start_index=$1
end_index=$2

if [ "$start_index" -ge "$end_index" ]; then
	    echo "Error: Start index must be less than end index."
	        exit 1
fi

filename="inputFile.csv"

echo "Generating $filename..."

# Clear the file if it already exists
> "$filename"

for (( i=start_index; i<=end_index; i++ )); do
	    random_number=$((RANDOM % 1000))
	        echo "$i, $random_number" >> "$filename"
	done

	echo "File $filename generated with entries from $start_index to $end_index."
