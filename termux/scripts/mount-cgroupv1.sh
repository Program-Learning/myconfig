mount -t tmpfs -o mode=755 tmpfs /sys/fs/cgroup

mkdir -p /sys/fs/cgroup/net_cls,net_prio
mount -t cgroup -o net_cls,net_prio cgroup /sys/fs/cgroup/net_cls.net_prio

mkdir -p /sys/fs/cgroup/perf_event
mount -t cgroup -o perf_event cgroup /sys/fs/cgroup/perf_event

mkdir -p /sys/fs/cgroup/pids
mount -t cgroup -o pids cgroup /sys/fs/cgroup/pids

mkdir -p /sys/fs/cgroup/freezer
mount -t cgroup -o freezer cgroup /sys/fs/cgroup/freezer

mkdir -p /sys/fs/cgroup/rdma
mount -t cgroup -o rdma cgroup /sys/fs/cgroup/rdma

mkdir -p /sys/fs/cgroup/cpu,cpuacct
mount -t cgroup -o cpu,cpuacct cgroup /sys/fs/cgroup/cpu,cpuacct

mkdir -p /sys/fs/cgroup/devices
mount -t cgroup -o devices cgroup /sys/fs/cgroup/devices

mkdir -p /sys/fs/cgroup/memory
mount -t cgroup -o memory cgroup /sys/fs/cgroup/memory

