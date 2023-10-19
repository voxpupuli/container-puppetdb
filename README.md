# Voxpupuli PuppetDB container

[![Sponsored by betadots GmbH](https://img.shields.io/badge/Sponsored%20by-betadots%20GmbH-blue.svg)](https://www.betadots.de)
[![License](https://img.shields.io/github/license/voxpupuli/container-puppetdb.svg)](https://github.com/voxpupuli/container-puppetdb/blob/main/LICENSE)
[![CI](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml/badge.svg)](https://github.com/voxpupuli/container-puppetdb/actions/workflows/ci.yaml)

This project hosts the Dockerfile and the required scripts to build a PuppetDB container image.

For compose file see: [CRAFTY](https://github.com/voxpupuli/crafty/tree/main/puppet/oss)

The PuppetDB container requires a working postgres container or other suitably
configured PostgreSQL database. With that in place, you can run PuppetDB like
so:

    docker run --link postgres:postgres --link puppet:puppet voxpupuli/puppetdb

You can change configuration settings by mounting volumes containing
configuration files or by using this image as a base image. For the defaults,
see the [Dockerfile and supporting folders][1].

For more details about PuppetDB, see the [official documentation][2].

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

## How to build the container

[see here](https://github.com/voxpupuli/crafty/blob/main/docs/how-to-build.md)

[1]: https://github.com/voxpupuli/container-puppetdb/tree/main/puppetdb
[2]: https://puppet.com/docs/puppetdb/latest/index.html
