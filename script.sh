#!/bin/bash

N=5 # интервал в секундах

# Проверка корректности интервала
if [ "$N" -le 0 ]; then
    echo "Ошибка: интервал должен быть больше нуля" >&2
    exit 1
fi

for i in $(seq 1 3); do
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log
    free -h >> monitor.log
    df -h >> monitor.log
    uptime >> monitor.log
    sleep "$N"
done
