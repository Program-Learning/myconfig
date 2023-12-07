umount /sys/fs/cgroup/net_cls.net_prio
rm -rf /sys/fs/cgroup/net_cls,net_prio

umount /sys/fs/cgroup/perf_event
rm -rf /sys/fs/cgroup/perf_event

umount /sys/fs/cgroup/pids
rm -rf /sys/fs/cgroup/pids

umount /sys/fs/cgroup/freezer
rm -rf /sys/fs/cgroup/freezer

umount /sys/fs/cgroup/rdma
rm -rf /sys/fs/cgroup/rdma

umount /sys/fs/cgroup/cpu,cpuacct
rm -rf /sys/fs/cgroup/cpu,cpuacct

umount /sys/fs/cgroup/devices
rm -rf /sys/fs/cgroup/devices

umount /sys/fs/cgroup/memory
rm -rf /sys/fs/cgroup/memory

umount /sys/fs/cgroup
# rm -rf /sys/fs/cgroup
