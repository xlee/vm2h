#!/bin/sh

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
        }
    ],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

/usr/bin/v2ray -config /config.json
