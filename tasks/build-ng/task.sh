#!/bin/sh

set -e

version=$(cat library-ng-version/version)

cd library-ng

npm install


testargs=
[ -n "$NG_BROWSERS" ] && testargs="$testargs --browsers=$NG_BROWSERS"
ng test --watch false $testargs

buildargs=
[ -n "$NG_ENV" ] && buildargs="$buildargs --env=$NG_ENV"

ng build $buildargs

cd ..

cp -R library-ng/dist/* build-output/.
