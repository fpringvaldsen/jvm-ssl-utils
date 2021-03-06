#!/usr/bin/env bash

set -e
set -x

git fetch --tags

lein test
# TODO - should be running acceptance tests here.
echo "Tests passed!"

lein release
echo "Release plugin successful, pushing changes to git"

git push origin --tags HEAD:$JVM_SSL_UTILS_BRANCH

echo "git push successful."
