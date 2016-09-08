# Crate on Kontena

[Crate](https://crate.io/) is an open source, highly scalable, shared-nothing distributed SQL database. Crate offers the scalability and performance of a modern No-SQL database with the power of Standard SQL. Crate’s distributed SQL query engine lets you use the same syntax that already exists in your applications or integrations, and have queries seamlessly executed across the crate cluster, including any aggregations, if needed.

## Deploy to Kontena

> Prerequisites: You need to have working [Kontena](http://www.kontena.io) Container Platform installed. If you are new to Kontena, check [quick start guide](http://www.kontena.io/docs/getting-started/quick-start).

Deploy the crate cluster stack by issuing following command within this folder:

```
$ kontena app deploy
```

This will deploy 3 node Crate cluster across nodes in your grid. If you need to scale higher,
just change the `instances` variable in `kontena.yml` and redeploy.

## Accessing Crate Cluster

Crate cluster can be accessed via `crate-node.kontena.local` dns-address from other services in the same grid or via [Kontena VPN](http://www.kontena.io/docs/using-kontena/vpn-access).


## About Kontena

[Kontena](http://www.kontena.io) is a new open source Docker platform including orchestration, service discovery, overlay networking and all the tools required to run your containerized workloads. Kontena is built to maximize developer happiness. It works on any cloud, it's easy to setup and super simple to use. [Give it a try](http://www.kontena.io/docs/getting-started/quick-start)! If you like it, please star it on [Github](https://github.com/kontena/kontena) and follow us on [Twitter](https://twitter.com/KontenaInc)!
