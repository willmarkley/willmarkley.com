#!/bin/bash

# Shell script to sync s3 bucket with git repository contents

## Configure aws credentials
### Run 'aws configure'
### Input keys for user 'wmarkley'

## Get latest changes from github
git pull

## Sync current directory (git repository clone) with s3 bucket
aws s3 sync . s3://willmarkley.com --exclude ".git/*"

