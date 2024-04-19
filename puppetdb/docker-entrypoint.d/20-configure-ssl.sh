#!/bin/sh

set -e

# when certs need to be generated and haven't been user supplied
if [ "$USE_PUPPETSERVER" = true ]; then
  # previously DNS_ALT_NAMES was omitted if empty, but ssl.sh already skips setting when empty
  DNS_ALT_NAMES="${DNS_ALT_NAMES}" CERTNAME="$CERTNAME" /ssl.sh

  # enable SSL in Jetty
  sed -i '/^# ssl-/s/^# //g' /etc/puppetlabs/puppetdb/conf.d/jetty.ini
fi

if [ -w "$SSLDIR" ] && [ "$(id -un)" = "root" ]; then
  # make sure Java apps running as puppetdb can read these files
  echo "Setting ownership for $SSLDIR to puppetdb:puppetdb"
  chown -R puppetdb:puppetdb ${SSLDIR}
fi
