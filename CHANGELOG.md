### Unreleased

- Add optional `endpoint` on `Configuration` for S3-compatible storage (e.g. DigitalOcean Spaces). When set, it is passed to `Fog::Storage.new`. Rake tasks also honor `BKP_ENDPOINT`.

### v0.0.8 - 2023-07-07

- Add support to hooks (methods to run before/after dump and restore)

### v0.0.7 - 2022-04-19

- Add support for ruby 3 and fog-aws 3.13.0

### v0.0.6 - 2021-04-25

- Add github as the homepage of the gem
- Add changelog to the project

### v0.0.3 - 2021-04-06

- Export all lib files
