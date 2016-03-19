# Mattermost on Kontena

## Deploy

> Prerequisites: You need to have working [Kontena](http://www.kontena.io) Container Platform installed. If you are new to Kontena, check [quick start guide](http://www.kontena.io/docs/getting-started/quick-start).   

Write secrets to [Kontena Vault](http://www.kontena.io/docs/using-kontena/vault):

```
$ kontena vault write MATTERTMOST_MYSQL_ROOT_PASSWORD "top_secret"
$ kontena vault write MATTERTMOST_MYSQL_PASSWORD "mostest"
```

After that you can deploy Mattermost simply by getting the [kontena.yml](./kontena.yml) file and running command:

```
$ kontena app deploy
```

This will deploy one instance of Mattermost application with single MariaDB database.

### Mattermost with MariaDB Galera Cluster

If you want to deploy Mattermost application with MariaDB Galera Cluster, please provision first three nodes. Then write GALERA_XTRABACKUP_PASSWORD to Vault:

```
$ kontena vault write GALERA_XTRABACKUP_PASSWORD "top_secret"
```

After that get [kontena-cluster.yml](./kontena-cluster.yml) and finally run command

```
$ kontena app deploy -f kontena-cluster.yml
```

## About Kontena

[Kontena](http://www.kontena.io) is a new open source Docker platform including orchestration, service discovery, overlay networking and all the tools required to run your containerized workloads. Kontena is built to maximize developer happiness. It works on any cloud, it's easy to setup and super simple to use. [Give it a try](http://www.kontena.io/docs/getting-started/quick-start)! If you like it, please star it on [Github](https://github.com/kontena/kontena) and follow us on [Twitter](https://twitter.com/KontenaInc)!”
