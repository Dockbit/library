# Change Log
All changes to the images, whether it's a new image or an update will be added here.

The format is based on [Keep a Changelog](http://keepachangelog.com/)

## Unreleased
### Added
- New [Google Cloud](google_cloud/) integration (with support for kubernetes).

## 2017-11-28
### Changed
- Update [AWS S3 Website](aws_s3_website) to 3.4.0. If you used `cloudfront_distribution_config` in `s3_website.yml`, check [here](https://github.com/laurilehmijoki/configure-s3-website/blob/master/changelog.md#200) for instructions on using the latest configuration sytnax.

## 2017-11-18
### Changed
- Update OpenJDK to version 8u151 in [Base](base/) image.
- Update [Docker](docker) Provider to 17.06.2 (introducing multi-stage builds).

## 2017-10-31
### Added
- Add support for supplying multiple image names/tags in [Docker](docker/) Provider

### Changed
- Fix variable name for private registry URL in [Docker](docker/) Provider

## 2017-10-01
### Added
- New [Erlang](erlang/) integration with initial versions: [19.3](erlang/19.3) and [20.0](erlang/20.0)
- New [Elixir](elixir/) integration with initial versions: [1.2.6](elixir/1.2.6), [1.3.4](elixir/1.3.4) and [1.4.5](elixir/1.4.5)

## 2017-09-30
### Added
- Add [Node](node/) version: [8.6.0](node/8.6.0).

## 2017-09-14
### Added
- Add [Node](node/) versions: [6.11.3](node/6.11.3), [7.10.0](node/7.10.0) and [8.5.0](node/8.5.0).

### Changed
- Default [Node](node/) version is now `6.11.3` instead of `6.8.0`.
- Update PHP to version 7.0.22 in [Base](base/) image.

## 2017-09-08
- Add support for Docker [build-time arguments](https://docs.docker.com/engine/reference/commandline/build/#set-build-time-variables-build-arg) in [Docker](docker/) image.

## 2017-06-28
### Added
- Add [Ruby](ruby/) versions: [2.3.4](ruby/2.3.4), [2.4.0](ruby/2.4.0) and [2.4.1](ruby/2.4.1).

## 2017-06-19
### Added
- Added [Docker](docker/) builder integration - Early access.

### Changed
- Update PHP to version 7.0.18 in [Base](base/) image.
- Update OpenJDK to version 8u131-b11-0 in [Base](base/) image.

## 2017-03-24
### Added
- Add ca-certificates to [Base](base/) image.

## 2017-03-27
### Changed
- Rename [HerokuCli](heroku_cli) and [HerokuToolbelt](heroku_toolbelt) stage variable names.

## 2017-03-24
### Added
- Add ca-certificates to [Base](base/) image.

### Fixed
- Fix loading order of Node provider versions.
- Fix use of [rbenv](https://github.com/rbenv/rbenv) for [Ruby](ruby/) provider versions.

### Changed
- Update php7.0-cli to 7.0.15.

## 2017-03-04
### Changed
- Updated [Packer image](packer/) to use [Packer](http://packer.io/) version 0.12.3.
