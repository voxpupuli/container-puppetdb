# Voxpupuli PuppetDB container

[![Sponsored by betadots GmbH](https://img.shields.io/badge/Sponsored%20by-betadots%20GmbH-blue.svg)](https://www.betadots.de)
[![License](https://img.shields.io/github/license/voxpupuli/container-puppetdb.svg)](https://github.com/voxpupuli/container-puppetdb/blob/main/LICENSE)
[![CI](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml/badge.svg)](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml)

---

- [Voxpupuli PuppetDB container](#voxpupuli-puppetdb-container)
  * [New version schema](#new-version-schema)
  * [Configuration](#configuration)
    + [Cert File Locations](#cert-file-locations)
  * [Initialization Scripts](#initialization-scripts)
  * [How to Release the container](#how-to-release-the-container)
  * [How to contribute](#how-to-contribute)

---

This project hosts the Dockerfile and the required scripts to build a PuppetDB container image.

For compose file see: [CRAFTY](https://github.com/voxpupuli/crafty/tree/main/puppet/oss)

The PuppetDB container requires a working postgres container or other suitably
configured PostgreSQL database. With that in place, you can run PuppetDB like
so:

    docker run --link postgres:postgres --link puppet:puppet ghcr.io/voxpupuli/puppetdb:7.13.0-v1.2.1

You can change configuration settings by mounting volumes containing
configuration files or by using this image as a base image. For the defaults,
see the [Dockerfile and supporting folders][1].

For more details about PuppetDB, see the [official documentation][2].

## New version schema

The new version schema has the following layout:

```text
<puppet.major>.<puppet.minor>.<puppet.patch>-v<container.major>.<container.minor>.<container.patch>
```

Example usage:

```shell
docker run --link postgres:postgres --link puppet:puppet ghcr.io/voxpupuli/puppetdb:7.13.0-v1.2.1
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
| **PUPPETDB_NODE_TTL**                   | Mark as ‘expired’ nodes that haven’t seen any activity (no new catalogs, facts, or reports) in the specified amount of time<br><br>`7d` |
| **PUPPETDB_NODE_PURGE_TTL**             | Automatically delete nodes that have been deactivated or expired for the specified amount of time<br><br>`14d`                          |
| **PUPPETDB_REPORT_TTL**                 | Automatically delete reports that are older than the specified amount of time<br><br>`14d`                                              |
| **PUPPETDB_JAVA_ARGS**                  | Arguments passed directly to the JVM when starting the service<br><br>`-Djava.net.preferIPv4Stack=true -Xms256m -Xmx256m -XX:+UseParallelGC -Xloggc:/opt/puppetlabs/server/data/puppetdb/logs/puppetdb_gc.log -Djdk.tls.ephemeralDHKeySize=2048` |

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

[see here](https://github.com/voxpupuli/crafty/blob/main/docs/how-to-release.md)

## How to contribute

[see here](https://github.com/voxpupuli/crafty/blob/main/CONTRIBUTING.md)

[1]: https://github.com/voxpupuli/container-puppetdb/tree/main/puppetdb
[2]: https://puppet.com/docs/puppetdb/latest/index.html
