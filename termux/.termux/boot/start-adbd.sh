#!/data/data/com.termux/files/usr/bin/sh
su -c setprop service.adb.tcp.port 33445
su -c stop adbd
su -c start adbd
