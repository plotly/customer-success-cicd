#!/bin/bash
export DEPLOY_DATE=$(date)
python3 write_app.py
git add .
git commit -m "update application on $DEPLOY_DATE"
git push github -f
sleep 10m
git push azure -f
sleep 10m
git push gitlab -f
sleep 10m
git push bitbucket -f
