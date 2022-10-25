#!/bin/bash

context="/data/applications/redmine"
file="$context/dockerfile"
version="1.0"


docker build --build-arg DIR="/usr/src/redmine" --build-arg ENV="production" -t "olympus/redmine:$version" -t "asofainy/redmine:$version" -t "asofainy/redmine:latest" -f $file $context

push docker asofainy/redmine:$version
push docker asofainy/redmine:latest


