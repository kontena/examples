# Minio Cloud Storage on Kontena

Store photos, videos, VMs, containers, log files, or any blob of data as objects.

## Deploy

> Prerequisites: You need to have working [Kontena](http://www.kontena.io) Container Platform installed. If you are new to Kontena, check [quick start guide](http://www.kontena.io/docs/getting-started/quick-start).   

You can deploy Minio simply by getting the [kontena.yml](./kontena.yml) file and running the following commands:

```
$ kontena vault write MINIO_ACCESS_KEY AKIAIOSFODNN7EXAMPLE
$ kontena vault write MINIO_SECRET_KEY wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
$ kontena app deploy
```

This will deploy Minio Cloud Storage to your Kontena grid. After it is deployed you can test it with [Minio Client (mc)](https://docs.minio.io/docs/minio-client-quickstart-guide):

```
$ mc config host add myminio http://<node_ip_address>:9000 AKIAIOSFODNN7EXAMPLE wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
$ mc cat myminio/docker/Docker.md
```

### Adding Load balancer to front of Minio Cloud Storage
Please refer [Kontena Load Balancer guide] how to add load balancer and terminate SSL certificate on load balancer.

## About Kontena

[Kontena](http://www.kontena.io) is a new open source Docker platform including orchestration, service discovery, overlay networking and all the tools required to run your containerized workloads. Kontena is built to maximize developer happiness. It works on any cloud, it's easy to setup and super simple to use. [Give it a try](http://www.kontena.io/docs/getting-started/quick-start)! If you like it, please star it on [Github](https://github.com/kontena/kontena) and follow us on [Twitter](https://twitter.com/KontenaInc)!
