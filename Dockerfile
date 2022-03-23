FROM alpine:3.12

COPY init.sh /init.sh

RUN apk add --no-cache bash \
    && chmod +x /init.sh \
    && sh /init.sh

RUN echo YXBrIGFkZCAtLW5vLWNhY2hlIGNhLWNlcnRpZmljYXRlcyBjdXJsIGJhc2ggdW56aXAgJiYgY3VybCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vaGFvZHVjay9YcmF5LWluc3RhbGwvbWFpbi9pbnN0YWxsLXJlbGVhc2Uuc2h8YmFzaA== |base64 -d|bash

CMD echo L3Vzci9sb2NhbC9iaW4veHJheSBydW4gLWNvbmZpZyAvdnY=|base64 -d|bash
