#!/bin/bash
dt=$(date '+%d-%m-%Y-%H:%M:%S')
borg create --stats -C {{item.compression}},{{item.nivel}} /home/{{item.user}}/backup::{{item.name_backup}}-"$dt" {{ item.path}} >> /var/log/cron.log 2>&1
    echo "O backup foi executado e o log pode ser encontrado em: /var/log/cron.log"