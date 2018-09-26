#!/bin/bash

cp /var/run/rmd/clean_rmd.db /var/run/rmd/rmd.db
umount /sys/fs/resctrl
mount -t resctrl resctrl /sys/fs/resctrl
