#!/bin/sh

set -e

cat <<EOF > /config.json 
{
    "log": {
        "loglevel": "none"
    },
    "inbounds": [{
            "port": "$PORT",
            "protocol": "vmess",
            "settings": {
                "clients": [{
                    "id": "$UUID"
                }]
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                    "path": "/app"
                }
            }
        },
        {
            "port": "$PORT",
            "protocol": "VLESS",
            "settings": {
                "clients": [{
                    "id": "$UUID"
                }],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                    "path": "/vless"
                }
            }
        }
    ],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF




