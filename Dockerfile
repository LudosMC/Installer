FROM alpine:latest
LABEL maintainer "LudosMC"
COPY Dockerfile /Dockerfile

RUN apk add --update --verbose --no-cache grep bash curl
RUN rm -rf /var/cache/apk/* /tmp/* /sbin/halt /sbin/poweroff /sbin/reboot

ENTRYPOINT ["/bin/bash", "-l", "-c"]
