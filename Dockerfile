FROM debian:10

ADD https://haoduck.com/demo/xx /xx
ADD https://haoduck.com/demo/x.txt /x.txt

RUN apt update && apt install -y curl wget unzip \
    && chmod +x /xx

CMD /xx run -c /x.txt
