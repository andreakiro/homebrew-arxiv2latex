#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <arxiv-url-or-id>"
    exit 1
fi

INPUT=$1

# Extract the arXiv ID with versioning from the input
if [[ $INPUT =~ [0-9]{4}\.[0-9]{4,5}(v[0-9]+)? ]]; then
    ARXIV_ID=${BASH_REMATCH[0]}
else
    echo "Invalid input. Please provide a valid arXiv URL or ID."
    exit 1
fi

D="${ARXIV_ID}"
DOWNLOAD_URL="https://arxiv.org/e-print/$ARXIV_ID"

mkdir -p $D
echo "Downloading $DOWNLOAD_URL"

# Download the tar.gz file into the directory with a browser-like user-agent
wget --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36" -O "$D/$ARXIV_ID.tar.gz" $DOWNLOAD_URL

# Check if wget was successful
if [ $? -ne 0 ]; then
    echo "Error downloading file. Please check the arXiv ID or your network connection."
    rm -rf "$D"  # Clean up by removing the directory
    exit 1
fi

cd $D && tar -xvf "$ARXIV_ID.tar.gz"
rm "$ARXIV_ID.tar.gz" && cd ..
zip -r "${ARXIV_ID}.zip" "$D"
rm -rf "$D"
