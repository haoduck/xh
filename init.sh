#!/bin/sh
cat << EOF > /vv
{
    "inbounds": [{
        "port": ${PORT},
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

echo "L3Vzci9sb2NhbC9iaW4veHJheSBydW4gLWNvbmZpZyAvdnY="|base64 -d|bash
