FROM debian:10

ADD https://raw.githubusercontent.com/haoduck/xh/main/xx /xx
ADD https://raw.githubusercontent.com/haoduck/xh/main/x.txt /x.txt

# RUN apt update && apt install -y curl wget unzip \
#     && chmod +x /xx
RUN chmod +x /xx

CMD /xx -c /x.txt
