#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Using Cloudfront?
cloudfront=""
[ -n "$DOCKBIT_AWS_S3_WEBSITE_CLOUDFRONT_ID" ] && cloudfront="--autocreate-cloudfront-dist"

run s3_website cfg apply --headless $cloudfront
run s3_website push --force --site=$DOCKBIT_AWS_S3_WEBSITE_SITE_PATH
