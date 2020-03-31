#!/bin/bash

# Checkout qa because we cant assume the build step has checked out the correct branch.
git fetch
git checkout origin/qa
git branch -D qa 
git checkout -b qa