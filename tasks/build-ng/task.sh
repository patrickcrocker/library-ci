#!/bin/sh

set -e

cd library-ng

prepare_headless_chrome_tests.sh

npm install
ng test --watch false
ng build

cd ..

cp -R library-ng/dist build-output/.
