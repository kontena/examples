# Redis Sentinel on Kontena

Redis Sentinel provides high availability for Redis. In practical terms this means that using Sentinel you can create a Redis deployment that resists without human intervention to certain kind of failures.
Additionally also provides other collateral tasks such as monitoring, notifications and acts as a configuration provider for clients.

## Deploy

> Prerequisites: You need to have working [Kontena](http://www.kontena.io) Container Platform installed. If you are new to Kontena, check [quick start guide](http://www.kontena.io/docs/getting-started/quick-start).   

You can deploy Redis Sentinel cluster simply by getting the [kontena.yml](./kontena.yml) file and running the following command:

```
$ kontena app deploy
```

## Accessing Redis Sentinel Cluster

Redis Sentinel cluster can be accessed via following dns-addresses from other services in the same grid or via [Kontena VPN](http://www.kontena.io/docs/using-kontena/vpn-access):

- **redis-sentinel-node.kontena.local:** actual redis nodes
- **redis-sentinel-lb.kontena.local:** load balanced redis node, only passes traffic to elected master redis node
- **redis-sentinel-monitor.kontena.local:** redis sentinel monitor nodes

## Environment Variables

`MASTER`
Colon-separated IP address and port or Redis master. Port is optional, `DEFAULT_PORT` is used when missing. E.g. `ip_address` or `ip_address:port`.

`DEFAULT_PORT`
Default port of Redis servers. Default value is `6379`.

`MASTER_NAME`
Unique name for master. When defined, monitoring will be initialized.

`QUORUM`
Number of Sentinels that need to agree about the fact the master is not reachable, in order for really mark the slave as failing, and eventually start a fail over procedure if possible. Default value is `2`.

`DOWN_AFTER`
Time in milliseconds an instance should not be reachable for a Sentinel starting to think it is down. Default value `30000`.

`FAILOVER_TIMEOUT`
Wait time before failover retry of the same master. Default value `180000`.

`PARALLEL_SYNCS` - Sets the number of slaves that can be reconfigured to use the new master after a failover at the same time. Default value `1`.

`SLAVES` - Manually setting of all the slaves of monitored master. Accepted format is a colon-separated IP address and port for each slave server. Multiple slaves are separated by a semicolon. E.g. `ip_address:host;ip_address`.

`ANNOUNCE_IP` - Host machine IP address.

`ANNOUNCE_PORT` - Mapped sentinel port.


## About Kontena

[Kontena](http://www.kontena.io) is a new open source Docker platform including orchestration, service discovery, overlay networking and all the tools required to run your containerized workloads. Kontena is built to maximize developer happiness. It works on any cloud, it's easy to setup and super simple to use. [Give it a try](http://www.kontena.io/docs/getting-started/quick-start)! If you like it, please star it on [Github](https://github.com/kontena/kontena) and follow us on [Twitter](https://twitter.com/KontenaInc)!
