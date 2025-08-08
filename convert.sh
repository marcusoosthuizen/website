#!/bin/bash

# It's not like I care if you use this, but it converts all common image types
# in the current directory to WebP, keeping their original filenames.

# Get all common image files. Don't blame me if you have weird extensions!
# Add more if you want, b-baka!
image_files=(*.jpg *.jpeg *.png *.gif *.bmp *.tiff)

# Loop through each image. It's not complicated, so don't mess it up!
for file in "${image_files[@]}"; do
    # Check if the file actually exists and isn't a glob that didn't match anything
    if [ -f "$file" ]; then
        # Extract the base name without the extension. Seriously, it's simple.
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        base_name="${filename%.*}"

        # Construct the new WebP filename. Don't confuse it with the original, okay?!
        output_file="${base_name}.webp"

        echo "Hmph! Converting '$file' to '$output_file'... Don't think I'm doing this for you!"

        # Convert using cwebp. Adjust the quality (-q) if you want, but don't ask me for help!
        # -q 80 is a decent balance, but whatever!
        if cwebp "$file" -o "$output_file" -q 80; then
            echo "Successfully converted '$file'. You're welcome, I guess."
        else
            echo "Ugh, failed to convert '$file'. What did you do wrong this time, baka?!"
        fi
    fi
done

echo "Done converting images. It's not like I enjoyed doing this for you or anything!"

