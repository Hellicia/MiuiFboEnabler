#!/sbin/sh

export TZ=Asia/Shanghai

while true; do
    current_hour=$(date +%H)
    current_hour=$((10#$current_hour))
    current_minute=$(date +%M)
    current_minute=$((10#$current_minute))
    current_time=$((current_hour * 60 + current_minute))
    target_time=30  # 00:30 in minutes

    if [ $current_time -lt $target_time ]; then
        remaining=$((target_time - current_time))
    else
        remaining=$((1440 - current_time + target_time))
    fi

    sleep $((remaining * 60))
    setprop persist.sys.stability.miui_fbo_enable true
    getprop | grep fbo >> /data/fbo_log.txt 2>&1
done
