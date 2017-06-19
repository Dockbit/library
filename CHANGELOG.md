# Change Log
All changes to the images, whether it's a new image or an update will be added here.

The format is based on [Keep a Changelog](http://keepachangelog.com/)

## 2017-06-19
### Added
- Added [Docker](docker/) builder integration - Early access.

### Changed
- Update Update PHP to version 7.0.18 in [Base](base/) image. 
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
