# ansible-hostapd
hostapd setup using ansible. Your WiFi card should support AP mode. In case of USB card I recommend from lsusb ID 148f:5370 Ralink Technology, Corp. RT5370 Wireless Adapter.
Supported and tested OS:
- CentOS 6 & 7, 32 & 64bit
- Debian 7 & 8, 32 & 64bit
- Ubuntu 14.04 & 16.04, 32 & 64bit
- Raspbian 2016-05-27-raspbian-jessie-lite.zip

Optionally, popular USB WiFi Realtek rt819X support can be added instead of stock hostapd

Usage:
- use get-and-run bundle wrt like wget wrt; sh wrt
- use unpacked version from playbooks directory and execute ansible manually to get full control like ansible-playbook -i local.host wifirouter.yml

If You want, You can build wrt bundle using Makeself 2.2.0 and command like makeself.sh --target playbooks playbooks wrt wrt ./bootstrap.sh
