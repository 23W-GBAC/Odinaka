#!/bin/bash

Local= "/mnt/c/Users/user/Downloads/medical.jpg"

Repo= "https://github.com/23W-GBAC/Odinaka/tree/main/images"

cp "$Local" "$Repo"

cd ~/Odinaka

git add .

git commit -am "image"

git push origin main

echo "image has been uploaded successfully"
