#!/bin/bash


root="/usr/src/redmine"
token="ghp_E3CK8yyaeO9l6LdqxspwE4vgrX9h5K1GWUD"

#. /opt/buildbox/scripts/setenv.sh

#   Plugins

##  Calibre

### Calibre avec More Previews

#git clone --branch dev https://${token}@github.com/asofainy/redmine_calibre /usr/src/redmine/plugins/redmine_calibre

if [ -d "$root/plugins/redmine_more_previews" ] && [ -d "$root/plugins/redmine_calibre" ]
then

    echo "INFO -- : Redmine More Previews and Calibre plugins found"
    cp -v $root/plugins/redmine_calibre/app/views/repositories/more_preview.html.erb $root/plugins/redmine_more_previews/app/views/repositories/more_preview.html.erb

#    file="$root/plugins/redmine_more_previews/app/views/repositories/more_preview.html.erb"
#    sudo mv $file "$file.old"

#    file="$root/plugins/redmine_more_previews/app/views/attachments/more_preview.html.erb"
#    sudo mv $file "$file.old"

fi

### Calibre avec Xapian Search

#if [ -f "$root/plugins/redmine_xapian/app/views/search/index.html.erb" ] && [ -f "$root/plugins/calibre/app/views/search/index.html.erb" ]
#then
#    echo "Redmine Xapian and Calibre plugins found"

#    file="$root/plugins/redmine_xapian/app/views/search/index.html.erb"
#    sudo mv $file "$file.old"
#fi


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