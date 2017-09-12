#!/bin/sh

set -e

cd library-ng

prepare_headless_chrome_tests.sh

npm install
ng test --watch false

