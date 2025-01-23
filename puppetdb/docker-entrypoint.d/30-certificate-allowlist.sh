#!/bin/bash

if [ "$PUPPETDB_CERTIFICATE_ALLOWLIST" != "" ]; then
  IFS=','
  for cert in $PUPPETDB_CERTIFICATE_ALLOWLIST; do
    echo $cert >> /opt/puppetlabs/server/apps/puppetdb/certificate-allowlist
  done
else
  touch /opt/puppetlabs/server/apps/puppetdb/certificate-allowlist
fi

