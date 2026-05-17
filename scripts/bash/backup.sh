#!/bin/bash

tar -czf ../../backups/sample-backup.tar.gz ../../sample.txt

echo "Backup completed at $(date)" >> ../../logs/automation.log
