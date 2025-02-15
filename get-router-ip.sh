#!/bin/bash
ROUTER_IP=$(curl -s -u admin:YOUR_PASS http://192.168.1.1/RST_status.htm | html2text | grep "wanip" | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}')
echo $ROUTER_IP
noip2 -i $ROUTER_IP
