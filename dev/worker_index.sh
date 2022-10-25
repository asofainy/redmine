#!/bin/bash 

name=redmine
environment=test
version='latest'
volume=${name}_${env}
image="asofainy/redmine:$version"

docker run \
--rm \
--name redmine-index_job_`date +'%Y%m%d_%M%s'` \
--network net_1 \
-v redmine_test-data:/usr/src \
--pull always \
-e RAILS_ENV=$environment \
$image /bin/bash -c "/opt/buildbox/scripts/index.sh"