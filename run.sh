#!/bin/bash

# $1 is the release type major, minor or patch
DEBUG=release-it:* release-it patch --preRelease=qa --ci --no-npm