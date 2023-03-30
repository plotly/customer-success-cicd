#!/bin/bash
env
which ssh-agent
[ -d ~/.ssh ] && echo "Directory ~/.ssh exists." || mkdir ~/.ssh 
echo ${SSH_PRIVATE_KEY} | base64 -d > ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519 # permissioning
eval "$(ssh-agent -s)" # setting ssh environment variable
echo '-----> Adding keys to ssh-agent'
ssh-add ~/.ssh/id_ed25519
echo "Host *
    Port 3022
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null" > ~/.ssh/config
echo '-----> Adding git remote'
git config remote.plotly.url >&- || git remote add plotly ${DASH_ENTERPRISE_URL}
echo '-----> Deploying app'
echo "$(git remote -v)"
git checkout -b ${BUILD_DISPLAY_NAME}
GIT_SSH_COMMAND='ssh -vvv' git push plotly ${BUILD_DISPLAY_NAME}:main -f

