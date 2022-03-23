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
    },
    {
        "port": 80,
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
    },
    {
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
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF
