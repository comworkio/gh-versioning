FROM alpine:3.15

RUN apk add --no-cache curl tar gzip && \
    curl -LO https://github.com/cli/cli/releases/download/v2.4.0/gh_2.4.0_linux_amd64.tar.gz && \
    tar xvf gh_2.4.0_linux_amd64.tar.gz && \
    mv gh_2.4.0_linux_amd64/bin/gh /usr/local/bin && \
    rm -rf gh_2.4.0_linux_amd64 gh_2.4.0_linux_amd64.tar.gz

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
