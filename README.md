## Up docker-compose

```console
docker-compose up -d
```

## Enter on primary mongodb replicaset node

```console
docker-compose exec mongo1 /bin/bash
```

## Setup replicaset

```console
./scripts/setup-mongo.sh
```

## Check connection

```console
mongo "mongodb://localhost:27011,localhost:27012,localhost:27013/?replicaSet=rs0"
```
