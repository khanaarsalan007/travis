#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t travis:"$TRAVIS_BUILD_NUMBER" .
docker tag travis:"$TRAVIS_BUILD_NUMBER" "$DOCKER_USERNAME"/travis:"$TRAVIS_BUILD_NUMBER"
docker push "$DOCKER_USERNAME"/travis:"$TRAVIS_BUILD_NUMBER"
