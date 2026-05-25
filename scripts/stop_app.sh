#!/bin/bash
if pgrep -f gunicorn > /dev/null; then
    pkill -f gunicorn
fi
if systemctl is-active --quiet nginx; then
    sudo systemctl stop nginx
fi
exit 0
