#!/bin/sh
# Copyright (c) 2015 Mattermost, Inc. All Rights Reserved.
# See License.txt for license information.

mkdir -p web/static/js

#panic: Failed to open sql connection dial tcp: getsockopt: connection refused
sleep 10
# ------------------------
echo "Starting platform"
cd /mattermost/bin
./platform
