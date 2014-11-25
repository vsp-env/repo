#!/bin/bash

rm -f include/all*.json

satis build satis.json .

git add .
git commit -m "update"
git push vsp
git push vspgithub
