#!/bin/sh
cat << EOF > /vv.json
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
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF
