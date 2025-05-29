#!/bin/bash
ARGS=(
--data-urlencode "key=408f3d" \
--data-urlencode "dimension=1024x768" \
--data-urlencode "device=desktop" \
--data-urlencode "format=png" \
--data-urlencode "cacheLimit=0" \
--data-urlencode "delay=1000" \
--data-urlencode "zoom=100" \
--data-urlencode "url=https://aeniks.github.io/w.html"
)
if [[ -n "$SECRET_PHRASE" ]]; then HASH=$(echo -n $URL$SECRET_PHRASE | md5sum | cut -d ' ' -f 1); ARGS+=(--data-urlencode "hash=$HASH"); fi
curl -Gs "https://api.screenshotmachine.com" "${ARGS[@]}" > output.png
