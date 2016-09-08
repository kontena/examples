# Elasticsearch Cluster on Kontena

Elasticsearch is a powerful open source search and analytics engine that makes data easy to explore.

## Deploy

> Prerequisites: You need to have working [Kontena](http://www.kontena.io) Container Platform installed. If you are new to Kontena, check [quick start guide](http://www.kontena.io/docs/getting-started/quick-start).   

You can deploy Elasticsearch simply by getting the [kontena.yml](./kontena.yml) file and running command:

```
$ kontena app deploy
```

This will deploy 3 node Elasticsearch cluster across nodes in your grid. If you need to scale higher,
just change the `instances` variable in `kontena.yml` and redeploy.


## About Kontena

[Kontena](http://www.kontena.io) is a new open source Docker platform including orchestration, service discovery, overlay networking and all the tools required to run your containerized workloads. Kontena is built to maximize developer happiness. It works on any cloud, it's easy to setup and super simple to use. [Give it a try](http://www.kontena.io/docs/getting-started/quick-start)! If you like it, please star it on [Github](https://github.com/kontena/kontena) and follow us on [Twitter](https://twitter.com/KontenaInc)!
