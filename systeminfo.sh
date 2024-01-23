#!/bin/bash
CURRENT_TIME_DATE=$(date)
SYSTEM_DISK_FREE_SPACE=$(df -h)

#!/bin/bash

while true; do
  # Echo HTML content with dynamic data
  echo "HTTP/1.1 200 OK"
  echo "Content-Type: text/html"
  echo ""
  echo "<html><head><title>Docker Nginx</title></head><body>"
  echo "<h1>Hello from Docker Nginx!</h1>"
  echo "<p>Current Date/Time: $(CURRENT_TIME_DATE)</p>"
  echo "<p>System Disk Free Space: $(SYSTEM_DISK_FREE_SPACE)</p>"
  echo "</body></html>"

  # Wait for 1 second before the next iteration
  sleep 1
done


