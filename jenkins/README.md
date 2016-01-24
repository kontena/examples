# Jenkins on Kontena

## Deploy Jenkins Master

```
$ kontena app deploy master
```

Jenkins web interface can be accessed through [Kontena VPN](http://www.kontena.io/docs/using-kontena/vpn-access) connection:
http://jenkins-master.kontena.local:8080/

## Deploy Jenkins Slave

```
$ kontena app deploy slave
```

Jenkins slave includes docker, docker-compose and kontena cli binaries. It also has access to hosts docker socket.

## Scale Jenkins Slaves

```
$ kontena app scale slave 2
```
