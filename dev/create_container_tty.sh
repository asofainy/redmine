
name=$1
env=$2
version=$3

name=${name}_${env}
image="asofainy/redmine:$version"


if [ $env == "production" ] ; then

    port=8889

else

    port=8888
    
fi

port=3443

REDMINE_PLUGINS_MIGRATE=true

echo -n "stopping container : "
docker stop $name

echo -n "removing container : "
docker rm -v $name

echo -n "creating container : "
docker run \
--name $name --hostname redmine.olympus.local \
--restart=always \
--publish $port:$port \
-v /data:/data \
-v /data/applications/redmine_calibre:/usr/src/redmine/plugins/redmine_calibre \
-v /data/applications/redmine/config:/config \
-v /data/applications/redmine/config/database.yml:/usr/src/redmine/config/database.yml \
-v /data/applications/redmine/config/configuration.yml:/usr/src/redmine/config/configuration.yml \
-e RAILS_ENV=$env \
-e REDMINE_PLUGINS_MIGRATE=true \
-e HTTPS_PORT=$port \
$image

container_id="$(docker container ls -f name=$name -q)"

echo "Pour se connecter :  docker exec -it $container_id /bin/bash"

#-v /data/applications/redmine/dev/plugins/calibre:/usr/src/redmine/plugins/calibre/ \
#-v $name-data:/usr/src/redmine \