#!/bin/bash

Local= "/mnt/c/Users/user/Downloads/$e.jpg"

Repo= "~/Odinaka/images/"

cp "/mnt/c/Users/user/Downloads/e.jpg" ~/Odinaka/images/

cd ~/Odinaka

git add .

git commit -am "image"

git push origin main

echo "image has been uploaded successfully"
