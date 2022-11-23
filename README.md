# Docker jq parse json

Docker Hub

> https://hub.docker.com/r/eallion/jq

### Uasge

```bash
docker run --rm -i eallion/jq echo '{"foo": "bar"}' | jq .
```
### Dockerfile

```dockerfile
FROM alpine:edge

RUN apk add curl jq && rm -f /var/cache/apk/*
```

### Build

```bash
docker build -t eallion/jq .
```

If you got a alpine cdn temporary error like this:

```bash
ERROR: https://dl-cdn.alpinelinux.org/alpine/edge/main: temporary error (try again later)
WARNING: Ignoring https://dl-cdn.alpinelinux.org/alpine/edge/main: No such file or directory
```

You need to resolve DNS:
```bash
sudo vim /etc/docker/daemon.json
```
Add:
```json
{
  "dns": ["8.8.8.8"]
}
```