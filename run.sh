#!/bin/bash

# $1 is the release type major, minor or patch
DEBUG=release-it:*  release-it $1 --preRelease=qa --ci --no-npm
