# Change Log
All changes to the images, whether it's a new image or an update will be added here.

The format is based on [Keep a Changelog](http://keepachangelog.com/)

## Unreleased
### Added
- New [Erlang](erlang/) integration with initial versions: [19.3](erlang/19.3) and [20.0](erlang/20.0)
- New [Elixir](elixir/) integration with initial versions: [1.2.6](elixir/1.2.6), [1.3.4](elixir/1.3.4) and [1.4.5](elixir/1.4.5)
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
