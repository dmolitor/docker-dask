#!/bin/bash

set -x

if [ "$EXTRA_PIP_PACKAGES" ]; then
    echo "EXTRA_PIP_PACKAGES environment variable found.  Installing".
    pip install $EXTRA_PIP_PACKAGES
fi

exec "$@"