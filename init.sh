#!/bin/sh
cat << EOF > /vv
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vless",
        "settings": {
            "clients": [{
                "id": "${ID}",
                "alterId": ${AID}
            }],
            "decryption": "none"
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "${WSPATH}"
            }
        }
    }]
}
EOF

#echo "YXB0IHVwZGF0ZSAmJiBhcHQgaW5zdGFsbCB3Z2V0IHVuemlwICYmIHdnZXQgaHR0cHM6Ly9naXRodWIuY29tL1hUTFMvWHJheS1jb3JlL3JlbGVhc2VzL2xhdGVzdC9kb3dubG9hZC9YcmF5LWxpbnV4LTY0LnppcCAtTyAvYS56aXAgJiYgdW56aXAgL2EuemlwIC1kIC8gJiYgY2htb2QgK3ggL3hyYXkgJiYgbWtkaXIgL3Vzci9sb2NhbC9iaW4gLXAgJiYgY3AgL3hyYXkgL3Vzci9sb2NhbC9iaW4="|bash64 -d|bash
echo "L3Vzci9sb2NhbC9iaW4veHJheSBydW4gLWNvbmZpZyAvdnY="|base64 -d|bash
