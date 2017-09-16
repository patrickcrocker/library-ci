#!/bin/sh

set -e

version=$(cat library-ng-version/version)

cd library-ng

prepare_headless_chrome_tests.sh

npm install
ng test --watch false

args=
[ -n "$NG_ENV" ] && args="$args --env=$NG_ENV"

ng build $args

cd ..

cp -R library-ng/dist/* build-output/.
