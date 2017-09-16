#!/bin/sh

set -e

cd library-backend

./gradlew build

cd ..

cp library-backend/build/libs/library-backend-*.jar build-output/.
