#!/bin/bash

set -euo pipefail

curl -fsS -m 10 --retry 5 -o /dev/null "${HEALTHCHECK_URL}"
