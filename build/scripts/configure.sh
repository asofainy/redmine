#!/bin/bash

root="/usr/src/redmine"

#. /opt/buildbox/scripts/setenv.sh

### Integration avec Calibre ###

if [ -f "$root/plugins/redmine_xapian/app/views/search/index.html.erb" ] && [ -f "$root/plugins/calibre/app/views/search/index.html.erb" ]
then
    file="$root/plugins/redmine_xapian/app/views/search/index.html.erb"
    echo "Redmine Xapian and Calibre plugins found, renaming \"$file\""
    sudo mv $file "$file.old"
fi


### Plugins


#$root/toolbox/scripts/config_database.sh

#cd $root/plugins

#rake redmine:plugins NAME=redmine_cms  VERSION=0 RAILS_ENV=$env
#rake redmine:plugins NAME=redmineup_tags VERSION=0 RAILS_ENV=$env
#rake redmine:plugins NAME=additionals VERSION=0 RAILS_ENV=$env
#rake redmine:plugins NAME=additional_tags VERSION=0 RAILS_ENV=$env

#rake redmine:plugins NAME=additionals  RAILS_ENV=$env
#rake redmine:plugins NAME=additional_tags  RAILS_ENV=$env

#rm -rfv $root/plugins/redmine_cms
#rm -rfv $root/plugins/redmineup_tags
#rm -rfv $root/plugins/additionals
#rm -rfv $root/plugins/additional_tags