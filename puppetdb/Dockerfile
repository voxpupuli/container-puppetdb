# Determines source "edge" or binary "release" builds
ARG build_type=release
ARG UBUNTU_CODENAME=jammy
# NOTE: never pass as a build-arg / must match .dockerenv -- used in logback.xml
ARG LOGDIR=/opt/puppetlabs/server/data/puppetdb/logs

######################################################
# base
######################################################

FROM ubuntu:22.04 as base

ARG DUMB_INIT_VERSION="1.2.5"
ARG LOGDIR
ARG TARGETARCH

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
    PUPPETDB_JAVA_ARGS="-Djava.net.preferIPv4Stack=true -Xms256m -Xmx256m -XX:+UseParallelGC -Xlog:gc*:file=$LOGDIR/puppetdb_gc.log -Djdk.tls.ephemeralDHKeySize=2048"

# puppetdb data and generated certs
VOLUME /opt/puppetlabs/server/data/puppetdb

LABEL org.label-schema.maintainer="Voxpupuli Release Team <voxpupuli@groups.io>" \
      org.label-schema.vendor="Vox Pupuli" \
      org.label-schema.url="https://github.com/voxpupuli/container-puppetdb" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.vcs-url="https://github.com/voxpupuli/container-puppetdb" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.dockerfile="/Dockerfile"

# NOTE: this is just documentation on defaults
EXPOSE 8080 8081

ENTRYPOINT ["dumb-init", "/docker-entrypoint.sh"]
CMD ["foreground"]

# The start-period is just a wild guess how long it takes PuppetDB to come
# up in the worst case. The other timing parameters are set so that it
# takes at most a minute to realize that PuppetDB has failed.
# Probe failure during --start-period will not be counted towards the maximum number of retries
# NOTE: k8s uses livenessProbe, startupProbe, readinessProbe and ignores HEALTHCHECK
HEALTHCHECK --start-period=5m --interval=10s --timeout=10s --retries=6 CMD ["/healthcheck.sh"]

# hadolint ignore=DL3020
ADD https://raw.githubusercontent.com/puppetlabs/pupperware/1c8d5f7fdcf2a81dfaf34f5ee34435cc50526d35/gem/lib/pupperware/compose-services/pe-postgres-custom/00-ssl.sh /ssl.sh
# hadolint ignore=DL3020
ADD https://raw.githubusercontent.com/puppetlabs/wtfc/6aa5eef89728cc2903490a618430cc3e59216fa8/wtfc.sh \
    https://github.com/Yelp/dumb-init/releases/download/v"$DUMB_INIT_VERSION"/dumb-init_"$DUMB_INIT_VERSION"_"$TARGETARCH".deb \
    docker-entrypoint.sh \
    healthcheck.sh \
    /

COPY docker-entrypoint.d /docker-entrypoint.d

# hadolint ignore=DL3009
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install --no-install-recommends -y ca-certificates curl dnsutils netcat && \
    chmod +x /ssl.sh /wtfc.sh /docker-entrypoint.sh /healthcheck.sh /docker-entrypoint.d/*.sh && \
    dpkg -i dumb-init_"$DUMB_INIT_VERSION"_"$TARGETARCH".deb && \
    rm dumb-init_"$DUMB_INIT_VERSION"_"$TARGETARCH".deb

######################################################
# release (build from packages)
######################################################

FROM base as release

ARG PUPPET_RELEASE
ENV PUPPET_RELEASE=${PUPPET_RELEASE:-7}

ARG PUPPETDB_VERSION
ENV PUPPETDB_VERSION=${PUPPETDB_VERSION:-7.14.0}

ARG UBUNTU_CODENAME

######################################################
# final image
######################################################

# dynamically selects "edge" or "release" alias based on ARG
# hadolint ignore=DL3006
FROM ${build_type} as final

ARG vcs_ref
ARG build_date
ARG build_type
ARG LOGDIR

ENV PUPPET_DEB=puppet${PUPPET_RELEASE}-release-${UBUNTU_CODENAME}.deb
ADD https://apt.puppet.com/${PUPPET_DEB} /${PUPPET_DEB}

RUN dpkg -i /${PUPPET_DEB} && \
    rm /${PUPPET_DEB} && \
    apt update && \
    apt install --no-install-recommends -y puppetdb=${PUPPETDB_VERSION}-1${UBUNTU_CODENAME} && \
    apt autoremove && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p "$LOGDIR" && \
    chown puppetdb:puppetdb "$LOGDIR" && \
# We want to use the HOCON database.conf and config.conf files, so get rid
# of the packaged files
    rm -f /etc/puppetlabs/puppetdb/conf.d/database.ini && \
    rm -f /etc/puppetlabs/puppetdb/conf.d/config.ini

RUN apt update && \
    apt install --no-install-recommends -y openjdk-17-jre-headless

COPY logback.xml \
     request-logging.xml \
     /etc/puppetlabs/puppetdb/
COPY conf.d /etc/puppetlabs/puppetdb/conf.d/
COPY puppetdb /etc/default/puppetdb

LABEL org.label-schema.name="PuppetDB ($build_type)" \
      org.label-schema.vcs-ref="$vcs_ref" \
      org.label-schema.version="$PUPPETDB_VERSION" \
      org.label-schema.build-date="$build_date"

COPY Dockerfile /
