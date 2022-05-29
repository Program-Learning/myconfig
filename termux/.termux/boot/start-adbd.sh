#!/data/data/com.termux/files/usr/bin/sh
su -c setprop service.adb.tcp.port 5555
su -c stop adbd
su -c start adbd
