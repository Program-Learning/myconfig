#!/data/data/com.termux/files/usr/bin/bash

export PATH="${PATH}:/system/xbin:/system/bin"
opts='rw,nosuid,nodev,noexec,relatime'
cgroups='blkio cpu cpuacct cpuset devices freezer memory pids schedtune'

# try to umount differents cgroups
for cg in ${cgroups}; do
  if mountpoint -q "/sys/fs/cgroup/${cg}" 2>/dev/null; then
    umount "/sys/fs/cgroup/${cg}"
    rmdir -p "/sys/fs/cgroup/${cg}"
  fi
done

# try to umount cgroup2
if mountpoint -q /sys/fs/cgroup/cg2_bpf 2>/dev/null; then
  umount /sys/fs/cgroup/cg2_bpf
  rmdir /sys/fs/cgroup/cg2_bpf
fi

# try to umount cgroup root dir and exit in case of failure
if mountpoint -q /sys/fs/cgroup 2>/dev/null; then
  umount /sys/fs/cgroup
  rmdir /sys/fs/cgroup
fi


