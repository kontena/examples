#!/bin/sh
# Copyright (c) 2015 Mattermost, Inc. All Rights Reserved.
# See License.txt for license information.

mkdir -p web/static/js

# ------------------------
echo starting platform
erb /config_docker.json.erb > /config_docker.json
cd /mattermost/bin
./platform -config=/config_docker.json
