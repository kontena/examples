FROM redis:3.0.7-alpine
MAINTAINER Kontena, Inc. <info@kontena.io>

RUN set -x \
    && apk update \
    && apk add curl bash

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 26379

ENTRYPOINT ["/docker-entrypoint.sh"]
