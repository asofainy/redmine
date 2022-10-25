#!/bin/bash

. /opt/buildbox/scripts/setenv.sh

sudo mkdir /opt/toolbox
sudo git clone --branch dev --progress $GITLAB_URL/toolbox.git /opt/toolbox
sudo chmod -R +x /opt/toolbox

src="google_drive:Bibliotheques/Ebooks"
dest="/books"
user="redmine"

mkdir -p $dest

/opt/toolbox/rclone/copy.sh $src $dest

sudo chown -Rv $user:$user $dest