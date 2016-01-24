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

## Scale Jenkins Slaves

```
$ kontena app scale slave 2
```
