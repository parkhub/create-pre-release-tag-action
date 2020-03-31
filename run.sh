#!/bin/bash

echo '#####################'
echo $GITHUB_TOKEN
echo $GITHUB_USER
echo $REPO_NAME
echo '#####################'

git config --global user.email "devops@parkhub.com"
git config --global user.name "codefresh-parkhub"
git clone https://$GITHUB_USER:$GITHUB_TOKEN@github.com/parkhub/$REPO_NAME.git
git remote add origin https://$GITHUB_USER:$GITHUB_TOKEN@github.com/parkhub/$REPO_NAME.git

# $1 is the release type major, minor or patch
DEBUG=release-it:*  release-it $1 --preRelease=qa --ci --no-npm
