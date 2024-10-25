FROM ubuntu:22.04

ARG vcs_ref
ARG build_date
ARG build_type

LABEL org.label-schema.maintainer="Voxpupuli Release Team <voxpupuli@groups.io>" \
      org.label-schema.vendor="Vox Pupuli" \
      org.label-schema.url="https://github.com/voxpupuli/container-puppetdb" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.vcs-url="https://github.com/voxpupuli/container-puppetdb" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.dockerfile="/Dockerfile" \
      org.label-schema.name="PuppetDB ($build_type)" \
      org.label-schema.vcs-ref="$vcs_ref" \
      org.label-schema.build-date="$build_date"

ARG DUMB_INIT_VERSION="1.2.5"
ARG TARGETARCH
ARG UBUNTU_CODENAME=jammy

ARG LOGDIR
ENV LOGDIR=${LOGDIR:-/opt/puppetlabs/server/data/puppetdb/logs}

ARG PUPPET_RELEASE
ENV PUPPET_RELEASE=${PUPPET_RELEASE:-8}

ARG PUPPETDB_VERSION
ENV PUPPETDB_VERSION=${PUPPETDB_VERSION:-8.8.0}

ARG SSLDIR
ENV SSLDIR=${SSLDIR:-/opt/puppetlabs/server/data/puppetdb/certs}

ENV PUPPETDB_POSTGRES_HOSTNAME="postgres" \
    PUPPETDB_POSTGRES_PORT="5432" \
    PUPPETDB_POSTGRES_DATABASE="puppetdb" \
    CERTNAME=puppetdb \
    DNS_ALT_NAMES="" \
    WAITFORCERT="" \
    PUPPETDB_USER=puppetdb \
    PUPPETDB_PASSWORD=puppetdb \
    PUPPETDB_NODE_TTL=7d \
    PUPPETDB_NODE_PURGE_TTL=14d \
    PUPPETDB_REPORT_TTL=14d \
    # used by entrypoint to determine if puppetserver should be contacted for config
    # set to false when container tests are run
    USE_PUPPETSERVER=true \
    # this value may be set by users, keeping in mind that some of these values are mandatory
    # -Djavax.net.debug=ssl may be particularly useful to set for debugging SSL
    PUPPETDB_JAVA_ARGS="-Djava.net.preferIPv4Stack=true -Xms256m -Xmx256m -XX:+UseParallelGC -Xlog:gc*:file=$LOGDIR/puppetdb_gc.log -Djdk.tls.ephemeralDHKeySize=2048" \
    PUPPET_DEB=puppet${PUPPET_RELEASE}-release-${UBUNTU_CODENAME}.deb \
    DEBIAN_FRONTEND=noninteractive

# puppetdb data and generated certs
VOLUME /opt/puppetlabs/server/data/puppetdb

ADD https://apt.puppet.com/${PUPPET_DEB} /${PUPPET_DEB}

ADD ssl.sh \
    wtfc.sh \
    docker-entrypoint.sh \
    healthcheck.sh \
    /

COPY docker-entrypoint.d /docker-entrypoint.d

RUN dpkg -i /${PUPPET_DEB} && \
    rm /${PUPPET_DEB} && \
    apt update && \
    apt install --no-install-recommends -y ca-certificates curl dnsutils netcat-traditional dumb-init && \
    chmod +x /ssl.sh /wtfc.sh /docker-entrypoint.sh /healthcheck.sh /docker-entrypoint.d/*.sh && \
    apt install --no-install-recommends -y puppetdb=${PUPPETDB_VERSION}-1${UBUNTU_CODENAME} && \
    apt install --no-install-recommends -y openjdk-17-jre-headless && \
    apt autoremove && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p "$LOGDIR" && \
    chown puppetdb:puppetdb "$LOGDIR" && \
    # We want to use the HOCON database.conf and config.conf files, so get rid
    # of the packaged files
    rm -f /etc/puppetlabs/puppetdb/conf.d/database.ini && \
    rm -f /etc/puppetlabs/puppetdb/conf.d/config.ini

COPY logback.xml \
     request-logging.xml \
     /etc/puppetlabs/puppetdb/
COPY conf.d /etc/puppetlabs/puppetdb/conf.d/
COPY puppetdb /etc/default/puppetdb
COPY Dockerfile /

# The start-period is just a wild guess how long it takes PuppetDB to come
# up in the worst case. The other timing parameters are set so that it
# takes at most a minute to realize that PuppetDB has failed.
# Probe failure during --start-period will not be counted towards the maximum number of retries
# NOTE: k8s uses livenessProbe, startupProbe, readinessProbe and ignores HEALTHCHECK
HEALTHCHECK --start-period=5m --interval=10s --timeout=10s --retries=6 CMD ["/healthcheck.sh"]

# NOTE: this is just documentation on defaults
EXPOSE 8080 8081

ENTRYPOINT ["dumb-init", "/docker-entrypoint.sh"]
CMD ["foreground"]
