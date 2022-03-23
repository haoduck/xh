FROM debian:10

COPY init.sh /init.sh

RUN apt update && apt install -y curl wget unzip \
    && chmod +x /init.sh

RUN echo "YXB0IHVwZGF0ZSAmJiBhcHQgaW5zdGFsbCB3Z2V0IHVuemlwICYmIHdnZXQgaHR0cHM6Ly9naXRodWIuY29tL1hUTFMvWHJheS1jb3JlL3JlbGVhc2VzL2xhdGVzdC9kb3dubG9hZC9YcmF5LWxpbnV4LTY0LnppcCAtTyAvYS56aXAgJiYgdW56aXAgL2EuemlwIC1kIC8gJiYgY2htb2QgK3ggL3hyYXk=" |base64 -d|bash

#CMD echo L3Vzci9sb2NhbC9iaW4veHJheSBydW4gLWNvbmZpZyAvdnY=|base64 -d|bash
CMD bash /init.sh
