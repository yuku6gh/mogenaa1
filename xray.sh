#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5c8798e2-43e3-4e01-b953-99912eaed547"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

