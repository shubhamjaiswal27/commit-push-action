#!/bin/bash

set -e

git config user.name "${INPUT_GIT_USERNAME}"
git config user.email "${INPUT_GIT_EMAIL}"

git add .
git commit -m "${INPUT_COMMIT_MESSAGE}"

git fetch origin $INPUT_BRANCH
git push origin HEAD:$INPUT_BRANCH