# Changelog

All notable changes to this project will be documented in this file.

## [v1.3.0](https://github.com/voxpupuli/container-puppetdb/tree/v1.3.0) (2024-01-31)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/v1.2.1...v1.3.0)

**Implemented enhancements:**

- PuppetDB 7.16.0 and 8.3.0 [\#44](https://github.com/voxpupuli/container-puppetdb/issues/44)
- Update puppetdb packages [\#45](https://github.com/voxpupuli/container-puppetdb/pull/45) ([tuxmea](https://github.com/tuxmea))

**Closed issues:**

- Add support for custom initialization scripts [\#39](https://github.com/voxpupuli/container-puppetdb/issues/39)
- Implement shellcheck in CI [\#34](https://github.com/voxpupuli/container-puppetdb/issues/34)

**Merged pull requests:**

- add skip-changelog to all release prs [\#46](https://github.com/voxpupuli/container-puppetdb/pull/46) ([rwaffen](https://github.com/rwaffen))
- Add $version-latest tags for Docker images like in puppetserver [\#42](https://github.com/voxpupuli/container-puppetdb/pull/42) ([rwaffen](https://github.com/rwaffen))
- Add option to have custom entry points. [\#41](https://github.com/voxpupuli/container-puppetdb/pull/41) ([tuxmea](https://github.com/tuxmea))
- Bump peter-evans/dockerhub-description from 3 to 4 [\#40](https://github.com/voxpupuli/container-puppetdb/pull/40) ([dependabot[bot]](https://github.com/apps/dependabot))
- add shellcheck from reusable workflow [\#38](https://github.com/voxpupuli/container-puppetdb/pull/38) ([rwaffen](https://github.com/rwaffen))
- add documentation on new version schema [\#37](https://github.com/voxpupuli/container-puppetdb/pull/37) ([tuxmea](https://github.com/tuxmea))

## [v1.2.1](https://github.com/voxpupuli/container-puppetdb/tree/v1.2.1) (2024-01-03)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/v1.2.0...v1.2.1)

**Merged pull requests:**

- update to new version schema [\#35](https://github.com/voxpupuli/container-puppetdb/pull/35) ([tuxmea](https://github.com/tuxmea))
- incorporate remote scripts [\#33](https://github.com/voxpupuli/container-puppetdb/pull/33) ([tuxmea](https://github.com/tuxmea))
- Bump github/codeql-action from 2 to 3 [\#32](https://github.com/voxpupuli/container-puppetdb/pull/32) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v1.2.0](https://github.com/voxpupuli/container-puppetdb/tree/v1.2.0) (2023-12-14)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/v1.1.0...v1.2.0)

**Implemented enhancements:**

- Add jre17 to puppetdb [\#30](https://github.com/voxpupuli/container-puppetdb/pull/30) ([tuxmea](https://github.com/tuxmea))

## [v1.1.0](https://github.com/voxpupuli/container-puppetdb/tree/v1.1.0) (2023-12-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/v1.0.0...v1.1.0)

**Closed issues:**

- update how to release docu [\#20](https://github.com/voxpupuli/container-puppetdb/issues/20)
- add CONTRIBUTING.md [\#18](https://github.com/voxpupuli/container-puppetdb/issues/18)

**Merged pull requests:**

- Use correct Xlog:gc syntax [\#28](https://github.com/voxpupuli/container-puppetdb/pull/28) ([tuxmea](https://github.com/tuxmea))
- Remove deprecated Xloggc [\#27](https://github.com/voxpupuli/container-puppetdb/pull/27) ([ldaneliukas](https://github.com/ldaneliukas))
- Add table of contents to README.md [\#26](https://github.com/voxpupuli/container-puppetdb/pull/26) ([rwaffen](https://github.com/rwaffen))
- Fix broken link in README.md [\#25](https://github.com/voxpupuli/container-puppetdb/pull/25) ([rwaffen](https://github.com/rwaffen))
- Update Readme to use containers from github and add contributing link [\#24](https://github.com/voxpupuli/container-puppetdb/pull/24) ([rwaffen](https://github.com/rwaffen))
- add action to update docker hub description [\#23](https://github.com/voxpupuli/container-puppetdb/pull/23) ([rwaffen](https://github.com/rwaffen))
- also push to dockerhub [\#22](https://github.com/voxpupuli/container-puppetdb/pull/22) ([rwaffen](https://github.com/rwaffen))

## [v1.0.0](https://github.com/voxpupuli/container-puppetdb/tree/v1.0.0) (2023-11-15)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.14.0...v1.0.0)

**Merged pull requests:**

- Release v1.0.0 [\#21](https://github.com/voxpupuli/container-puppetdb/pull/21) ([rwaffen](https://github.com/rwaffen))
- Update build\_arch to include linux/arm64 [\#19](https://github.com/voxpupuli/container-puppetdb/pull/19) ([rwaffen](https://github.com/rwaffen))
- Add matrix setup to build several versions in parallel specified in a json file [\#17](https://github.com/voxpupuli/container-puppetdb/pull/17) ([rwaffen](https://github.com/rwaffen))
- Update and fix GitHub Actions release workflow [\#16](https://github.com/voxpupuli/container-puppetdb/pull/16) ([ldaneliukas](https://github.com/ldaneliukas))

## [7.14.0](https://github.com/voxpupuli/container-puppetdb/tree/7.14.0) (2023-10-19)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.10.1...7.14.0)

**Fixed bugs:**

- Dockerfile: Fix labels for container image [\#7](https://github.com/voxpupuli/container-puppetdb/pull/7) ([bastelfreak](https://github.com/bastelfreak))
- CI: Fix container tags: puppdb-\>puppetdb [\#6](https://github.com/voxpupuli/container-puppetdb/pull/6) ([bastelfreak](https://github.com/bastelfreak))

**Closed issues:**

- rename repo [\#8](https://github.com/voxpupuli/container-puppetdb/issues/8)

**Merged pull requests:**

- updates to documentation and variable naming [\#15](https://github.com/voxpupuli/container-puppetdb/pull/15) ([rwaffen](https://github.com/rwaffen))
- update documentation [\#14](https://github.com/voxpupuli/container-puppetdb/pull/14) ([rwaffen](https://github.com/rwaffen))
- Cleanup [\#13](https://github.com/voxpupuli/container-puppetdb/pull/13) ([rwaffen](https://github.com/rwaffen))
- set build context to puppetdb [\#12](https://github.com/voxpupuli/container-puppetdb/pull/12) ([rwaffen](https://github.com/rwaffen))
- Update build [\#10](https://github.com/voxpupuli/container-puppetdb/pull/10) ([rwaffen](https://github.com/rwaffen))
- allow to build puppet 8 and 7 versions [\#9](https://github.com/voxpupuli/container-puppetdb/pull/9) ([rwaffen](https://github.com/rwaffen))
- Add CODEOWNERS [\#5](https://github.com/voxpupuli/container-puppetdb/pull/5) ([bastelfreak](https://github.com/bastelfreak))
- fix creds for container build [\#4](https://github.com/voxpupuli/container-puppetdb/pull/4) ([rwaffen](https://github.com/rwaffen))
- Add CI configuration [\#3](https://github.com/voxpupuli/container-puppetdb/pull/3) ([bastelfreak](https://github.com/bastelfreak))
- initial voxpupuli [\#2](https://github.com/voxpupuli/container-puppetdb/pull/2) ([tuxmea](https://github.com/tuxmea))
- dependabot: check for github actions, docker and bundler [\#1](https://github.com/voxpupuli/container-puppetdb/pull/1) ([bastelfreak](https://github.com/bastelfreak))

## [7.10.1](https://github.com/voxpupuli/container-puppetdb/tree/7.10.1) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.10.0...7.10.1)

## [7.10.0](https://github.com/voxpupuli/container-puppetdb/tree/7.10.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.9.2...7.10.0)

## [7.9.2](https://github.com/voxpupuli/container-puppetdb/tree/7.9.2) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.9.1...7.9.2)

## [7.9.1](https://github.com/voxpupuli/container-puppetdb/tree/7.9.1) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.9.0...7.9.1)

## [7.9.0](https://github.com/voxpupuli/container-puppetdb/tree/7.9.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.11.2...7.9.0)

## [7.11.2](https://github.com/voxpupuli/container-puppetdb/tree/7.11.2) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.11.1...7.11.2)

## [7.11.1](https://github.com/voxpupuli/container-puppetdb/tree/7.11.1) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.11.0...7.11.1)

## [7.11.0](https://github.com/voxpupuli/container-puppetdb/tree/7.11.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.8.0...7.11.0)

## [7.8.0](https://github.com/voxpupuli/container-puppetdb/tree/7.8.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.7.1...7.8.0)

## [7.7.1](https://github.com/voxpupuli/container-puppetdb/tree/7.7.1) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.7.0...7.7.1)

## [7.7.0](https://github.com/voxpupuli/container-puppetdb/tree/7.7.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.6.0...7.7.0)

## [7.6.0](https://github.com/voxpupuli/container-puppetdb/tree/7.6.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.5.2...7.6.0)

## [7.5.2](https://github.com/voxpupuli/container-puppetdb/tree/7.5.2) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.5.1...7.5.2)

## [7.5.1](https://github.com/voxpupuli/container-puppetdb/tree/7.5.1) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.5.0...7.5.1)

## [7.5.0](https://github.com/voxpupuli/container-puppetdb/tree/7.5.0) (2021-07-01)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.22.1...7.5.0)

## [6.22.1](https://github.com/voxpupuli/container-puppetdb/tree/6.22.1) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.22.0...6.22.1)

## [6.22.0](https://github.com/voxpupuli/container-puppetdb/tree/6.22.0) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.21.0...6.22.0)

## [6.21.0](https://github.com/voxpupuli/container-puppetdb/tree/6.21.0) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.20.2...6.21.0)

## [6.20.2](https://github.com/voxpupuli/container-puppetdb/tree/6.20.2) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.20.1...6.20.2)

## [6.20.1](https://github.com/voxpupuli/container-puppetdb/tree/6.20.1) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.20.0...6.20.1)

## [6.20.0](https://github.com/voxpupuli/container-puppetdb/tree/6.20.0) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.19.0...6.20.0)

## [6.19.0](https://github.com/voxpupuli/container-puppetdb/tree/6.19.0) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.18.2...6.19.0)

## [6.18.2](https://github.com/voxpupuli/container-puppetdb/tree/6.18.2) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.18.1...6.18.2)

## [6.18.1](https://github.com/voxpupuli/container-puppetdb/tree/6.18.1) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.18.0...6.18.1)

## [6.18.0](https://github.com/voxpupuli/container-puppetdb/tree/6.18.0) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.19.1...6.18.0)

## [6.19.1](https://github.com/voxpupuli/container-puppetdb/tree/6.19.1) (2021-06-30)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.4.0...6.19.1)

## [7.4.0](https://github.com/voxpupuli/container-puppetdb/tree/7.4.0) (2021-05-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.4.1...7.4.0)

## [7.4.1](https://github.com/voxpupuli/container-puppetdb/tree/7.4.1) (2021-05-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.17.0...7.4.1)

## [6.17.0](https://github.com/voxpupuli/container-puppetdb/tree/6.17.0) (2021-05-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.3.1...6.17.0)

## [7.3.1](https://github.com/voxpupuli/container-puppetdb/tree/7.3.1) (2021-04-15)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.3.0...7.3.1)

## [7.3.0](https://github.com/voxpupuli/container-puppetdb/tree/7.3.0) (2021-04-15)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.16.0...7.3.0)

## [6.16.0](https://github.com/voxpupuli/container-puppetdb/tree/6.16.0) (2021-04-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.16.1...6.16.0)

## [6.16.1](https://github.com/voxpupuli/container-puppetdb/tree/6.16.1) (2021-04-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.2.0...6.16.1)

## [7.2.0](https://github.com/voxpupuli/container-puppetdb/tree/7.2.0) (2021-02-19)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.15.0...7.2.0)

## [6.15.0](https://github.com/voxpupuli/container-puppetdb/tree/6.15.0) (2021-02-09)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.1.0...6.15.0)

## [7.1.0](https://github.com/voxpupuli/container-puppetdb/tree/7.1.0) (2021-01-28)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.14.0...7.1.0)

## [6.14.0](https://github.com/voxpupuli/container-puppetdb/tree/6.14.0) (2021-01-27)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.0.1...6.14.0)

## [7.0.1](https://github.com/voxpupuli/container-puppetdb/tree/7.0.1) (2020-11-19)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.11.0...7.0.1)

## [6.11.0](https://github.com/voxpupuli/container-puppetdb/tree/6.11.0) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.11.1...6.11.0)

## [6.11.1](https://github.com/voxpupuli/container-puppetdb/tree/6.11.1) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.11.3...6.11.1)

## [6.11.3](https://github.com/voxpupuli/container-puppetdb/tree/6.11.3) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.12.0...6.11.3)

## [6.12.0](https://github.com/voxpupuli/container-puppetdb/tree/6.12.0) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.12.1...6.12.0)

## [6.12.1](https://github.com/voxpupuli/container-puppetdb/tree/6.12.1) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.12.2...6.12.1)

## [6.12.2](https://github.com/voxpupuli/container-puppetdb/tree/6.12.2) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.13.0...6.12.2)

## [6.13.0](https://github.com/voxpupuli/container-puppetdb/tree/6.13.0) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.13.1...6.13.0)

## [6.13.1](https://github.com/voxpupuli/container-puppetdb/tree/6.13.1) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/7.0.0...6.13.1)

## [7.0.0](https://github.com/voxpupuli/container-puppetdb/tree/7.0.0) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.11.2...7.0.0)

## [6.11.2](https://github.com/voxpupuli/container-puppetdb/tree/6.11.2) (2020-05-08)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.10.2...6.11.2)

## [6.10.2](https://github.com/voxpupuli/container-puppetdb/tree/6.10.2) (2020-04-28)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.10.1...6.10.2)

## [6.10.1](https://github.com/voxpupuli/container-puppetdb/tree/6.10.1) (2020-04-28)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.10.0...6.10.1)

## [6.10.0](https://github.com/voxpupuli/container-puppetdb/tree/6.10.0) (2020-04-21)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.9.1...6.10.0)

## [6.9.1](https://github.com/voxpupuli/container-puppetdb/tree/6.9.1) (2020-02-27)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.9.0...6.9.1)

## [6.9.0](https://github.com/voxpupuli/container-puppetdb/tree/6.9.0) (2020-01-07)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.8.0...6.9.0)

## [6.8.0](https://github.com/voxpupuli/container-puppetdb/tree/6.8.0) (2019-12-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.8.1...6.8.0)

## [6.8.1](https://github.com/voxpupuli/container-puppetdb/tree/6.8.1) (2019-12-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.7...6.8.1)

## [6.3.7](https://github.com/voxpupuli/container-puppetdb/tree/6.3.7) (2019-12-10)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.7.3...6.3.7)

## [6.7.3](https://github.com/voxpupuli/container-puppetdb/tree/6.7.3) (2019-10-29)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.7.2...6.7.3)

## [6.7.2](https://github.com/voxpupuli/container-puppetdb/tree/6.7.2) (2019-10-19)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.7.1...6.7.2)

## [6.7.1](https://github.com/voxpupuli/container-puppetdb/tree/6.7.1) (2019-10-04)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.7.0...6.7.1)

## [6.7.0](https://github.com/voxpupuli/container-puppetdb/tree/6.7.0) (2019-09-26)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.6.0...6.7.0)

## [6.6.0](https://github.com/voxpupuli/container-puppetdb/tree/6.6.0) (2019-09-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.5.0...6.6.0)

## [6.5.0](https://github.com/voxpupuli/container-puppetdb/tree/6.5.0) (2019-08-14)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.4.0...6.5.0)

## [6.4.0](https://github.com/voxpupuli/container-puppetdb/tree/6.4.0) (2019-07-03)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.4...6.4.0)

## [6.3.4](https://github.com/voxpupuli/container-puppetdb/tree/6.3.4) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.3...6.3.4)

## [6.3.3](https://github.com/voxpupuli/container-puppetdb/tree/6.3.3) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.2...6.3.3)

## [6.3.2](https://github.com/voxpupuli/container-puppetdb/tree/6.3.2) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.1...6.3.2)

## [6.3.1](https://github.com/voxpupuli/container-puppetdb/tree/6.3.1) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.0...6.3.1)

## [6.3.0](https://github.com/voxpupuli/container-puppetdb/tree/6.3.0) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.6...6.3.0)

## [6.3.6](https://github.com/voxpupuli/container-puppetdb/tree/6.3.6) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.3.5...6.3.6)

## [6.3.5](https://github.com/voxpupuli/container-puppetdb/tree/6.3.5) (2019-03-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.0.3...6.3.5)

## [6.0.3](https://github.com/voxpupuli/container-puppetdb/tree/6.0.3) (2019-02-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.0.4...6.0.3)

## [6.0.4](https://github.com/voxpupuli/container-puppetdb/tree/6.0.4) (2019-02-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.17...6.0.4)

## [5.2.17](https://github.com/voxpupuli/container-puppetdb/tree/5.2.17) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.16...5.2.17)

## [5.2.16](https://github.com/voxpupuli/container-puppetdb/tree/5.2.16) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.15.1...5.2.16)

## [5.2.15.1](https://github.com/voxpupuli/container-puppetdb/tree/5.2.15.1) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.15...5.2.15.1)

## [5.2.15](https://github.com/voxpupuli/container-puppetdb/tree/5.2.15) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.14...5.2.15)

## [5.2.14](https://github.com/voxpupuli/container-puppetdb/tree/5.2.14) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.13...5.2.14)

## [5.2.13](https://github.com/voxpupuli/container-puppetdb/tree/5.2.13) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.12...5.2.13)

## [5.2.12](https://github.com/voxpupuli/container-puppetdb/tree/5.2.12) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.11...5.2.12)

## [5.2.11](https://github.com/voxpupuli/container-puppetdb/tree/5.2.11) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.10...5.2.11)

## [5.2.10](https://github.com/voxpupuli/container-puppetdb/tree/5.2.10) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.9...5.2.10)

## [5.2.9](https://github.com/voxpupuli/container-puppetdb/tree/5.2.9) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.8...5.2.9)

## [5.2.8](https://github.com/voxpupuli/container-puppetdb/tree/5.2.8) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.19...5.2.8)

## [5.2.19](https://github.com/voxpupuli/container-puppetdb/tree/5.2.19) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.18...5.2.19)

## [5.2.18](https://github.com/voxpupuli/container-puppetdb/tree/5.2.18) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.1.6...5.2.18)

## [5.1.6](https://github.com/voxpupuli/container-puppetdb/tree/5.1.6) (2019-02-11)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.2.0...5.1.6)

## [6.2.0](https://github.com/voxpupuli/container-puppetdb/tree/6.2.0) (2019-01-16)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.0.2...6.2.0)

## [6.0.2](https://github.com/voxpupuli/container-puppetdb/tree/6.0.2) (2019-01-02)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.7...6.0.2)

## [5.2.7](https://github.com/voxpupuli/container-puppetdb/tree/5.2.7) (2019-01-02)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.1.0...5.2.7)

## [6.1.0](https://github.com/voxpupuli/container-puppetdb/tree/6.1.0) (2018-12-12)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.0.1...6.1.0)

## [6.0.1](https://github.com/voxpupuli/container-puppetdb/tree/6.0.1) (2018-10-18)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.5...6.0.1)

## [5.2.5](https://github.com/voxpupuli/container-puppetdb/tree/5.2.5) (2018-10-18)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.6...5.2.5)

## [5.2.6](https://github.com/voxpupuli/container-puppetdb/tree/5.2.6) (2018-10-18)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/6.0.0...5.2.6)

## [6.0.0](https://github.com/voxpupuli/container-puppetdb/tree/6.0.0) (2018-09-13)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.3...6.0.0)

## [5.2.3](https://github.com/voxpupuli/container-puppetdb/tree/5.2.3) (2018-06-15)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/5.2.4...5.2.3)

## [5.2.4](https://github.com/voxpupuli/container-puppetdb/tree/5.2.4) (2018-06-15)

[Full Changelog](https://github.com/voxpupuli/container-puppetdb/compare/64017ff065875698b5bb777c00294b117e239aae...5.2.4)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
