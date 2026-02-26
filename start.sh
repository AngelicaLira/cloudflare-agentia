#!/bin/bash
cloudflared tunnel --no-autoupdate run --token $TUNNEL_TOKEN &
node /evolution/dist/src/main.js
