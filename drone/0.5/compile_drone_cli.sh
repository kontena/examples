#!/usr/bin/env bash

set -e

[ -z /usr/local/bin/sha256sum ] && \
  ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

[ -z /$GOPATH/src/github.com/drone/drone ] && \
  git clone git://github.com/drone/drone.git $GOPATH/src/github.com/drone/drone

pushd .

cd $GOPATH/src/github.com/drone/drone
git pull
export GO15VENDOREXPERIMENT=1
make deps
make gen
make build

popd

cp $GOPATH/src/github.com/drone/drone/release/drone drone

./drone --version
