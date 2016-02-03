# Couchbase on Kontena

## Prerequisities

- working Kontena installation
- working Kontena VPN connection

## Deploy

```
$ kontena app deploy
```

After deploy has finished, head over to http://couchbase-server-1.kontena.local:8091/ and finish the installation.

## Scaling

```
$ kontena app scale 3
```

Adds two more Couchbase server instances to Kontena Grid. After instances are deployed you can add them to CouchBase cluster via web ui. Just use internal DNS names:

- couchbase-server-2.kontena.local
- couchbase-server-3.kontena.local
