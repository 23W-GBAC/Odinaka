#!/bin/bash

Local= "/mnt/c/Users/user/Downloads/IMG_2393.jpg"

Repo= "~/Odinaka/images"

cp "$Local" "$Repo"

cd ~/Odinaka

git add .

git commit -am "image"

git push origin main

echo "image has been uploaded successfully"
