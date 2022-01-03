#!/bin/sh

cat <<EOF > /config.json 
{
    "log": {
        "loglevel": "none"
    },
    "inbounds": [{
            "protocol": "vmess",
            "settings": {
                "clients": [{
                    "id": "${UUID}"
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
            "protocol": "VLESS",
            "settings": {
                "clients": [{
                    "id": "{$UUID}"
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

/usr/bin/v2ray -config /config.json &


