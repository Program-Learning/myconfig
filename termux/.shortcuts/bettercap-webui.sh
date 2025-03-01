#!/data/data/com.termux/files/usr/bin/sh
sudo go/bin/bettercap -eval "set api.rest.address 127.0.0.1;set api.rest.port 8081;set http.server.address 127.0.0.1;set http.server.port 80;set http.server.path /data/data/com.termux/files/usr/local/share/bettercap/ui;set api.rest.username root;set api.rest.password root;api.rest on;http.server on"
