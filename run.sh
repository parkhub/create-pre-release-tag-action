#!/bin/bash

echo "Environment Variables"
echo "REPO: ${REPO}"
echo "USERNAME: ${USERNAME}"
echo "TOKEN: ${TOKEN}"

echo "Configuring git"
git config --global url."https://${USERNAME}:${TOKEN}@github.com".insteadOf "https://github.com"

echo "Cloning repo ${REPO}"
git clone https://github.com/parkhub/${REPO}.git

echo "Adding remote for repo ${REPO}"
git remote add origin https://github.com/parkhub/${REPO}.git

echo "Checking out QA branch"
git checkout origin/qa

echo "Running release-it"
# $1 is the release type major, minor or patch
DEBUG=release-it:* release-it patch --preRelease=qa --ci --no-npm