#!/bin/bash

# ============================================
# backup.sh
# Tasks 1 through 13 - Complete Backup Script
# ============================================

# Task 1: Create backup directory
mkdir -p ~/backup

# Task 2: Copy Documents folder to backup
cp -r ~/Documents ~/backup/

# Task 3: Create compressed archive with date
tar -czvf backup_$(date +%Y%m%d).tar.gz ~/backup

# Task 4: Display size of backup file
du -sh backup_$(date +%Y%m%d).tar.gz

# Task 5: List backup files
ls -lh *.tar.gz

# Task 6: Remove backups older than 7 days
find . -name "backup_*.tar.gz" -mtime +7 -exec rm {} \;

# Task 7: Display current date and time
date

# Task 8: Show disk usage
df -h

# Task 9: Show memory usage
free -h

# Task 10: Log backup completion
echo "Backup completed successfully on $(date)" >> backup.log

# Task 11: Check if last command was successful
if [ $? -eq 0 ]; then
    echo "Backup process successful."
else
    echo "Backup process failed."
fi

# Task 12: Display log file contents
cat backup.log

# Task 13: Script finished message
echo "All tasks completed successfully."
