#!/bin/zsh
URL="https://www.reddit.com/message/inbox/.json?feed=e2979fb780341cb98465011d0320f04a08d70787&user=No_Judge_5947"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/No_Judge_5947"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "#1 $notifications"
else
    echo "#2"
fi
