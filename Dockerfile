FROM alpine:3.15

ARG GH_VERSION=2.4.0

RUN apk add --no-cache curl tar gzip && \
    curl -LO "https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.tar.gz" && \
    tar xvf "gh_${GH_VERSION}_linux_amd64.tar.gz" && \
    mv "gh_${GH_VERSION}_linux_amd64/bin/gh" /usr/local/bin && \
    rm -rf "gh_${GH_VERSION}_linux_amd64" "gh_${GH_VERSION}_linux_amd64.tar.gz"

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
