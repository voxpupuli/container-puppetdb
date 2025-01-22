#!/bin/bash
# bash is required to pass ENV vars with dots as sh cannot

set -e

# Remove optional config files if values are not set
if [[ ( -z "$PUPPETDB_READ_USER" || -z "$PUPPETDB_READ_PASSWORD" ) && -e /etc/puppetlabs/puppetdb/conf.d/read-database.conf ]]; then
    rm /etc/puppetlabs/puppetdb/conf.d/read-database.conf
fi

for f in /docker-entrypoint.d/*.sh; do
    echo "Running $f"
    "$f"
done

if [ -d /docker-custom-entrypoint.d/ ]; then
    find /docker-custom-entrypoint.d/ -type f -name "*.sh" \
        -exec chmod +x {} \;
    sync
    find /docker-custom-entrypoint.d/ -type f -name "*.sh" \
        -exec echo Running {} \; -exec {} \;
fi

exec /opt/puppetlabs/bin/puppetdb "$@"
