FROM alpine:edge
MAINTAINER José Moreira <josemoreiravarzim@gmail.com>

COPY nginx-boot.sh /sbin/nginx-boot
RUN chmod +x /sbin/nginx-boot

RUN apk --update add nginx bash && \
    rm -fR /var/cache/apk/*

CMD [ "/sbin/nginx-boot" ]
EXPOSE 80
