#!/bin/bash

context="/data/applications/redmine/build"
file="$context/Dockerfile"
image="asofainy/redmine"
version="local"
tag="$image:$version"

nocache=$1

docker build $nocache \
-f $file -t $tag $context 

#--build-arg ENV="production" \

