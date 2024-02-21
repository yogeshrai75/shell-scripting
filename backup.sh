#!/bin/bash

<< task
this is a shell script
for taking backup of the files
task

src_dir="/home/ubuntu/scripts"
des_dir="/home/ubuntu/backups"

backup_filename="backup_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "backup started"

echo   "backing up  $backup_filename ......"

tar -czvf "${des_dir}/${backup_filename}" "$src_dir"

echo "backup completed"