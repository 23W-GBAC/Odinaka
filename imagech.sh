#!/bin/bash

# Check if ImageMagick (convert) is installed
if ! command -v convert &>/dev/null; then
	    echo "ImageMagick (convert) is not installed. Please install it first."
	        exit 1
fi

# Directory where your images are located
input_directory="/path/to/your/images"

# Directory to store resized images
output_directory="/path/to/output/directory"

# Maximum width and height for the resized images
max_width=800
max_height=600

# Check if the output directory exists, if not, create it
if [ ! -d "$output_directory" ]; then
	    mkdir -p "$output_directory"
fi

# Loop through each image in the input directory
for image in "$input_directory"/*.{jpg,jpeg,png,gif}; do
	    if [ -f "$image" ]; then
		# Get the filename without extension
		filename=$(basename -- "$image")
	         filename_noext="${filename%.*}"

		 # Resize the image while preserving aspect ratio
		 convert "$image" -resize "${max_width}x${max_height}>" "$output_directory/$filename_noext.jpg"
		         echo "Resized: $filename"
		fi
done
echo "Image resizing completed."
