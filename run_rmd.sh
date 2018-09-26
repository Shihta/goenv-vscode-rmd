#!/bin/bash -x

pids=( $(pgrep rmd) )
for pid in "${pids[@]}"; do
  if [[ $pid != $$ ]]; then
    kill "$pid"
  fi
done

umount /sys/fs/resctrl
mount -t resctrl resctrl /sys/fs/resctrl
rm -rf /var/run/rmd
mkdir -p /var/run/rmd
chown rmd:rmd /var/run/rmd
/usr/local/sbin/rmd > /dev/null 2>&1 &
