##!/bin/bash

# Define your GitHub username, repository name, and personal access token
GITHUB_USERNAME="OdinakaDico"
REPO_NAME="Odinaka"
ACCESS_TOKEN="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"

# Specify the image file you want to upload
IMAGE_FILE="path/to/your/image.png"

# Create a new commit with the image
curl -X PUT "https://api.github.com/repos/$GITHUB_USERNAME/$REPO_NAME/contents/images/$(basename "$IMAGE_FILE")" \
	  -H "Authorization: token $ACCESS_TOKEN" \
	    -d '{
    "message": "Add image",
        "content": "'"$(base64 -w0 "$IMAGE_FILE")"'"
	  }'
