FROM alpine:edge

RUN apk add --update curl && rm -rf /var/cache/apk/*
RUN apk --no-cache add jq

COPY codeship.sh .

ENTRYPOINT ["./codeship.sh"]
