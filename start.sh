#!/bin/sh
cloudflared tunnel --no-autoupdate run --token "${TUNNEL_TOKEN}" &
sleep 2
node /evolution/dist/src/main.js
