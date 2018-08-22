#!/bin/bash

rm /var/run/rmd/rmd.db
umount /sys/fs/resctrl
mount -t resctrl resctrl /sys/fs/resctrl
