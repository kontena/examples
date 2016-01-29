# Parse Server Cluster on Kontena

A Parse.com API compatible Server Cluster on Kontena

## Prerequisities
You need at least 2 Kontena nodes up and running.

## Deploy

Write secrets to [Kontena Vault](http://www.kontena.io/docs/using-kontena/vault):

```
$ kontena vault write PARSE_MASTER_KEY "mySecretMasterKey"
$ kontena vault write PARSE_FILE_KEY "optionalFileKey"
```

Deploy the stack:

```
$ kontena app deploy
```

Command deploys cluster of 3 x MongoDB databases, 3 x parse server and 2 x haproxy load balancer.
