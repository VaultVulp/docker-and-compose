FROM docker
RUN apk update && \
    apk add python python-dev py-pip build-base && \
    pip install docker-compose && \
    apk del python-dev build-base && \
    rm -r /var/cache/apk/*
