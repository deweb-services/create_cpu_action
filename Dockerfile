FROM ghcr.io/deweb-services/deployment-script/deployment-script:latest as builder

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]