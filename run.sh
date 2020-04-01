#!/bin/bash

echo "Environment Variables"
echo "REPO: ${REPO}"
echo "USERNAME: ${USERNAME}"
echo "TOKEN: ${TOKEN}"

echo "Configuring git"
git config --global url."https://${USERNAME}:${TOKEN}@github.com".insteadOf "https://github.com"
git config --global user.email "devops@parkhub.com"
git config --global user.name "codefresh-parkhub"

echo "Initialize GIT"
git init

echo "Cloning repo ${REPO}"
git clone https://github.com/${REPO}.git 

echo "Adding remote for repo ${REPO}"
git remote add origin https://github.com/${REPO}.git

echo "Checking out QA branch"
git fetch
git checkout origin/qa
git checkout -b qa

echo "Running release-it"
# $1 is the release type major, minor or patch
DEBUG=release-it:* release-it ${RELEASE_TYPE} --preRelease=qa --ci --no-npm