#!/bin/bash

set -e

git config user.name $INPUT_GITHUB_USERNAME
git config user.email $INPUT_GITHUB_EMAIL

git add .
git commit -m $INPUT_COMMIT_MESSAGE

git fetch origin $INPUT_BRANCH
git push origin HEAD:$INPUT_BRANCH