#!/bin/bash

# Usage: idiff dst src

dst=$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")
src=$(cd "$(dirname "$2")"; pwd -P)/$(basename "$2")
idiff_repo=~/.idiff-repo

# Ensure the idiff repo exists and is initialized
mkdir -p $idiff_repo
cd $idiff_repo
git init --quiet .

# Copy dst into the idiff repo
cp $dst temp

# Add dst to the index
git add temp

# Replace dst with src in the idiff repo
cp $src temp

# Interactive staging
git add -p temp

# Checkout the staged changes
git checkout -- temp

# Copy the result back to dst
cp temp $dst

# Cleanup
rm temp
git clean -fd
