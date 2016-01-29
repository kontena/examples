# MariaDB Galera Cluster on Kontena

## Deploy

Write secrets to [Kontena Vault](http://www.kontena.io/docs/using-kontena/vault):

```
$ kontena vault write GALERA_XTRABACKUP_PASSWORD "top_secret"
$ kontena vault write GALERA_MYSQL_ROOT_PASSWORD "top_secret"
```

Deploy the stack:

```
$ kontena app deploy
```

Command deploys 1 x MariaDB Galera seed node, 3 x normal nodes and 2 x haproxy load balancers.

After cluster is bootstrapped seed node should be removed:

```
$ kontena app scale seed 0
```

## Accessing Cluster

MariaDB Galera Cluster load balancer can be accessed via `mariadb-galera-lb.kontena.local` dns-address from other services or via [Kontena VPN](http://www.kontena.io/docs/using-kontena/vpn-access).
