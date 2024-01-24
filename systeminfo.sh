#!/bin/bash

OUTPUT_FILE="/usr/share/nginx/html/"

while true; do
  # Get current date/time and system disk free space
  CURRENT_TIME_DATE=$(date)
  SYSTEM_DISK_FREE_SPACE=$(df -h)

  # Echo HTML content with dynamic data to a file
  {
    echo "<html><head><title>Docker Nginx</title></head><body>"
    echo "<h1>Hello from Docker Nginx!</h1>"
    echo "<p>Current Date/Time: $CURRENT_TIME_DATE</p>"
    echo "<p>System Disk Free Space: $SYSTEM_DISK_FREE_SPACE</p>"
    echo "</body></html>"
  } > "$OUTPUT_FILE"

  # Wait for 1 second before the next iteration
  sleep 1
done
