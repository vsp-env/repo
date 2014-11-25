#!/bin/bash

rm -f include/all*.json

satis build satis.json .

git add -A
git commit -m "update"
git push vsp master
git push vspgithub master
