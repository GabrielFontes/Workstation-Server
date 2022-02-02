#!/bin/bash
if [ -e "/home/{{ item.user }}/backup" ]; then
    echo "{{ item.user }} - ja foi configurado"
else
   borg init -e none /home/{{ item.user }}/backup
fi
