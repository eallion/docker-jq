FROM alpine:edge

RUN apk add curl jq && rm -f /var/cache/apk/*