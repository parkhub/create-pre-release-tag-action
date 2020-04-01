#!/bin/bash

# Checkout master because we cant assume the build step has checked out the correct branch.
git fetch
git checkout origin/qa