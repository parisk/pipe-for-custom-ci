#! /bin/sh

set -e

http POST ${CI_SYSTEM_HOST}/api/deployment/ "Authorization: Token ${CI_SYSTEM_TOKEN}" repo=${BITBUCKET_REPO_FULL_NAME} ref=${BITBUCKET_BRANCH} commit=${BITBUCKET_COMMIT}
