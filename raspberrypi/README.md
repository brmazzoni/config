# WPA supplicant

`wpa_supplicant.conf` goes in the 'boot' partition of the SD card

coutry codes:
- China: `CN`

Sometimes, need to add the following line to `boot/cmdline.txt`:
```
usbhid.mousepoll=0
```

# UART config for Serial0

1. Add the following line to `boot/config.txt`:
```
dtoverlay=disable-bt
```
2. run `raspi-config` and deactivate the serial console, then activate serial HW  
3. install minicom: 
```
sudo apt install minicom
```
4. run minicom: 
```
minicom -b 115200 -o -D /dev/ttySerial0
```