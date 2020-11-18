FROM alpine:3.9

WORKDIR /work

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && apk add bash curl && \
    curl -SLO https://get.helm.sh/helm-v3.2.3-linux-amd64.tar.gz && tar -zxvf helm-v3.2.3-linux-amd64.tar.gz && \
    ln -s /work/linux-amd64/helm /usr/local/bin/helm

CMD ["bash"]