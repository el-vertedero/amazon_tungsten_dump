#!/vendor/bin/sh

# get dram size
DRAM_SIZE_KB=$(awk '/MemTotal/ {print $2}' /proc/meminfo)

if [ "$DRAM_SIZE_KB" -le 3145728 ]; then
    echo $1 > /proc/sys/vm/min_free_kbytes
else
    echo $2 > /proc/sys/vm/min_free_kbytes
fi

