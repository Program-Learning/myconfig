mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup
mkdir -p /sys/fs/cgroup/devices
mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices

#lxc-setup-cgroups #可能不需要
/data/data/com.termux/files/usr/bin/lxc-setup-cgroups
