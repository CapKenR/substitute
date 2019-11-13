FROM alpine:3

RUN apk add gettext

ADD substitute.sh /usr/local/bin/substitute.sh

ENTRYPOINT ["/usr/local/bin/substitute.sh"]
CMD ["/usr/local/source", "/usr/local/destination"]
