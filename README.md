# Voxpupuli PuppetDB container

[![CI](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml/badge.svg)](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml)
[![License](https://img.shields.io/github/license/voxpupuli/container-puppetdb.svg)](https://github.com/voxpupuli/container-puppetdb/blob/main/LICENSE)
[![Donated by Puppet](https://img.shields.io/badge/Donated%20by-Puppet-blue.svg)](https://www.puppet.com)
[![Sponsored by betadots GmbH](https://img.shields.io/badge/Sponsored%20by-betadots%20GmbH-blue.svg)](https://www.betadots.de)

---

- [Voxpupuli PuppetDB container](#voxpupuli-puppetdb-container)
  - [New version schema](#new-version-schema)
  - [Configuration](#configuration)
    - [Cert File Locations](#cert-file-locations)
  - [Initialization Scripts](#initialization-scripts)
  - [How to Release the container](#how-to-release-the-container)
  - [How to contribute](#how-to-contribute)
  - [Transfer notice](#transfer-notice)

---

__⚠️ Attention ⚠️__: the container name `voxpupuli/container-puppetdb` will be deprecated in 2025-02 and might be removed in the future. Please use `voxpupuli/puppetdb` instead.

---
This project hosts the Dockerfile and the required scripts to build a PuppetDB container image.

For compose file see: [CRAFTY](https://github.com/voxpupuli/crafty/tree/main/puppet/oss)

The PuppetDB container requires a working postgres container or other suitably
configured PostgreSQL database. For a Compose example see the [CRAFTY OSS Demo compose.yaml](https://github.com/voxpupuli/crafty/blob/main/puppet/oss/compose.yaml)

You can change configuration settings by mounting volumes containing
configuration files or by using this image as a base image. For the defaults,
see the [Dockerfile and supporting folders](https://github.com/voxpupuli/container-puppetdb/tree/main/puppetdb).

For more details about PuppetDB, see the [official documentation](https://puppet.com/docs/puppetdb/latest/index.html).

## New version schema

The new version schema has the following layout:

```text
<puppet.major>.<puppet.minor>.<puppet.patch>-v<container.major>.<container.minor>.<container.patch>
```

Example usage:

```shell
docker pull ghcr.io/voxpupuli/puppetdb:7.13.0-v1.2.1
```

| Name | Description |
| --- | --- |
| puppet.major | Describes the contained major Puppet version (7 or 8) |
| puppet.minor | Describes the contained minor Puppet version |
| puppet.patch | Describes the contained patchlevel Puppet version |
| container.major | Describes the major version of the base container (Ubunutu 22.04) or incompatible changes |
| container.minor | Describes new features or refactoring with backward compatibility |
| container.patch | Describes if minor changes or bugfixes have been implemented |

## Configuration

| Name                                    | Usage / Default                                                                                                                         |
|-----------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| **CERTNAME**                            | The DNS name used on this services SSL certificate<br><br>`puppetdb`                                                                    |
| **DNS_ALT_NAMES**                       | Additional DNS names to add to the services SSL certificate<br><br>Unset                                                                |
| **WAITFORCERT**                         | Number of seconds to wait for certificate to be signed<br><br>`120`                                                                     |
| **USE_PUPPETSERVER**                    | Set to `false` to skip acquiring SSL certificates from a Puppet Server.<br><br>`true`                                                   |
| **PUPPETSERVER_HOSTNAME**               | The DNS hostname of the puppet server<br><br>`puppet`                                                                                   |
| **PUPPETSERVER_PORT**                   | The port of the puppet server<br><br>`8140`                                                                                             |
| **PUPPETDB_POSTGRES_HOSTNAME**          | The DNS hostname of the postgres service<br><br>`postgres`                                                                              |
| **PUPPETDB_POSTGRES_PORT**              | The port for postgres<br><br>`5432`                                                                                                     |
| **PUPPETDB_POSTGRES_DATABASE**          | The name of the puppetdb database in postgres<br><br>`puppetdb`                                                                         |
| **PUPPETDB_USER**                       | The puppetdb database user<br><br>`puppetdb`                                                                                            |
| **PUPPETDB_PASSWORD**                   | The puppetdb database password<br><br>`puppetdb`                                                                                        |
| **PUPPETDB_READ_USER**                  | The puppetdb database read-only user<br><br>(optional)                                                                                  |
| **PUPPETDB_READ_PASSWORD**              | The puppetdb database read-only password<br><br>(optional)                                                                              |
| **PUPPETDB_NODE_TTL**                   | Mark as ‘expired’ nodes that haven’t seen any activity (no new catalogs, facts, or reports) in the specified amount of time<br><br>`7d` |
| **PUPPETDB_NODE_PURGE_TTL**             | Automatically delete nodes that have been deactivated or expired for the specified amount of time<br><br>`14d`                          |
| **PUPPETDB_REPORT_TTL**                 | Automatically delete reports that are older than the specified amount of time<br><br>`14d`                                              |
| **PUPPETDB_JAVA_ARGS**                  | Arguments passed directly to the JVM when starting the service<br><br>`-Djava.net.preferIPv4Stack=true -Xms256m -Xmx256m -XX:+UseParallelGC -Xlog:gc*:file=$LOGDIR/puppetdb_gc.log -Djdk.tls.ephemeralDHKeySize=2048` |
| **LOGDIR**                              | Path of the log directory<br><br>`/opt/puppetlabs/server/data/puppetdb/logs`                                                            |
| **SSLDIR**                              | Path of the SSL directory<br><br>`/opt/puppetlabs/server/data/puppetdb/certs`                                                           |

### Cert File Locations

The directory structure follows the following conventions.  The full path is always available inside the container as the environment variable `$SSLDIR`

- 'ssl-ca-cert'
  `/opt/puppetlabs/server/data/puppetdb/certs/certs/ca.pem`

- 'ssl-cert'
  `/opt/puppetlabs/server/data/puppetdb/certs/certs/<certname>.pem`

- 'ssl-key'
  `/opt/puppetlabs/server/data/puppetdb/certs/private_keys/<certname>.pem`

## Initialization Scripts

If you would like to do additional initialization, add a directory called `/docker-custom-entrypoint.d/` and fill it with `.sh` scripts.
These scripts will be executed at the end of the entrypoint script, before the service is ran.

## How to Release the container

[see here](https://github.com/voxpupuli/crafty/blob/main/RELEASE.md)

## How to contribute

[see here](https://github.com/voxpupuli/crafty/blob/main/CONTRIBUTING.md)

## Transfer Notice

This project was originally authored by [Puppet](https://github.com/puppetlabs).
The maintainer preferred that Vox Pupuli take ownership of the project for future improvement and maintenance.
Existing pull requests and issues were transferred over, please fork and continue to contribute here.
