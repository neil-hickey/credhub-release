#!/usr/bin/env bash

set -u

export PATH=/var/vcap/bosh/bin:/var/vcap/jobs/credhub/bin:$PATH
monit start credhub
exec /var/vcap/jobs/credhub/bin/post-start
