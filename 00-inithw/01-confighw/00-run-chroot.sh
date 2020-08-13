#!/bins/bash -e

cat <<EOF >>/boot/config.txt
#MCS config (Do not delete or edit this part)(start)
dtoverlay=sc16is752-i2c,int_pin=13,addr=0x4c,xtal=14745600
dtoverlay=sc16is752-i2c,int_pin=12,addr=0x49,xtal=14745600
dtoverlay=sc16is752-i2c,int_pin=6,addr=0x48,xtal=14745600
dtoverlay=w1-gpio
dtoverlay=mcp2515-can1,oscillator=16000000,interrupt=25
#MCS config (Do not delete or edit this part)(end)
EOF

cat <<EOF >>/etc/modules
i2c-dev
ds2482
wire
EOF

