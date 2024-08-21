#!/bin/bash

# 指定日志文件路径
LOG_FILE="/path/to/your/logfile.log"

# 日志内容模板
LOG_TEMPLATE="This is a test log entry with timestamp: $(date)"

# 循环追加日志数据
while true; do
  # 生成当前时间戳
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  
  # 生成日志条目
  LOG_ENTRY="[$TIMESTAMP] ${LOG_TEMPLATE}"
  
  # 将日志条目追加到指定文件
  echo "$LOG_ENTRY" >> "$LOG_FILE"
  
  # 等待1秒钟
  sleep 1
done
