#!/usr/bin/env bash

set -e

export S3_WEBSITE_VERSION=3.4.0

source $HOME/.bash_profile
gem install s3_website -v ${S3_WEBSITE_VERSION} \
 && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.1.7 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.1.8 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.2.2 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.2.3 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.2.4 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.3.0 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.3.1 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.3.2 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.3.4 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
rbenv shell 2.4.0 \
  && gem install s3_website -v ${S3_WEBSITE_VERSION} \
  && curl --silent -L https://github.com/laurilehmijoki/s3_website/releases/download/v${S3_WEBSITE_VERSION}/s3_website.jar > `gem environment gemdir`/gems/s3_website-${S3_WEBSITE_VERSION}/s3_website-${S3_WEBSITE_VERSION}.jar
