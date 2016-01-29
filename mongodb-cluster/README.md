# MongoDB Replica Set Cluster on Kontena

## Deploy

Deploy the stack:

```
$ kontena app deploy
```

Command deploys 3 x MongoDB instaces and adds instances to Replica Set.

## Accessing MongoDB Replica Set via VPN

MongoDB cluster can be accessed via `mongodb-cluster-peer.kontena.local` dns-address from other services or via [Kontena VPN](http://www.kontena.io/docs/using-kontena/vpn-access).
