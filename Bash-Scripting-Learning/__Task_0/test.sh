#!/bin/bash
for i in {1..10}; do
  echo "2023-02-20 14:30:0$i INFO This is a sample log entry $i" >> /home/$USER/my_custom_logs/myapp.log
  sleep 1
done