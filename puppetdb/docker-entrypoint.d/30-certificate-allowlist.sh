#!/bin/bash

if [ "$PUPPETDB_CERTIFICATE_ALLOWLIST" != "" ]; then
  IFS=','
  for cert in $PUPPETDB_CERTIFICATE_ALLOWLIST; do
    echo $cert >> /etc/puppetlabs/puppetdb/conf.d/certificate-allowlist
  done
else
  touch /etc/puppetlabs/puppetdb/conf.d/certificate-allowlist
fi

