#!/sbin/sh

# 设置时区为北京时间
export TZ=Asia/Shanghai

# 无限循环，确保脚本持续运行
while true; do
    # 获取当前小时（24小时制）
    current_hour=$(date +%H)
    # 将小时转换为十进制数
    current_hour=$((10#$current_hour))
    
    # 获取当前分钟
    current_minute=$(date +%M)
    # 将分钟转换为十进制数
    current_minute=$((10#$current_minute))
    
    # 计算当前时间距离00:00的分钟数
    current_time=$((current_hour * 60 + current_minute))
    
    # 目标时间（00:30）的分钟数
    target_time=30

    # 计算距离目标时间的剩余分钟数
    if [ $current_time -lt $target_time ]; then
        remaining=$((target_time - current_time))
    else
        # 如果当前时间已经超过目标时间，计算到第二天目标时间的剩余分钟数
        remaining=$((1440 - current_time + target_time))
    fi

    # 等待剩余时间
    sleep $((remaining * 60))
    
    # 设置系统属性 persist.sys.stability.miui_fbo_enable 为 true
    setprop persist.sys.stability.miui_fbo_enable true
    
    # 获取系统属性中包含 "fbo" 的值，并保存到日志文件 /data/fbo_log.txt
    getprop | grep fbo >> /data/fbo_log.txt 2>&1
done
