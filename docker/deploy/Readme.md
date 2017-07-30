Run:
data directory should include coindaemon and coin-name.conf

```
/data
   coind
   coin-name.conf
```
```
mkdir data
docker run --name moka -p 19104:19104 -v /path/to/data/:/data -idt followtheart/deploy:mokacoin

```

port should be your coind p2p port

DO NOT USE daemon=1 in coinname.conf
