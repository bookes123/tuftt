#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fa5f07f5-9d31-40bb-bee5-1cb7f20f5c1f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

