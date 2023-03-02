#!/bin/bash
export DEPLOY_DATE=$(date)
python3 write_app.py
git add .
git commit -m "update application on $DEPLOY_DATE"
git push github
git push azure
git push gitlab
git push bitbucket
