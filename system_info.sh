# #!/bin/bash
#   # Capture system information
#   CPU_INFO=$(lscpu)
#   DATE_INFO=$(date)
#   DISK_INFO=$(df -h)

#   # Create an HTML file with captured information
#   cat <<EOF > /usr/share/nginx/html/index.html
#   <!DOCTYPE html>
#   <html>
#   <head>
#       <title>System Information</title>
#   </head>
#   <body>
#       <h3>System Information</h3>
#       <pre>
#       CPU Information:
#       $CPU_INFO

#       Date and Time:
#       $DATE_INFO

#       Disk Space:
#       $DISK_INFO
#       </pre>
#   </body>
#   </html>
#   EOF

# ================================
#!/bin/bash

while true; do
    # Capture system information
    CPU_INFO=$(lscpu)
    DATE_INFO=$(date)
    DISK_INFO=$(df -h)

    # Create an HTML file with captured information
    cat <<EOF > /usr/share/nginx/html/index.html
    <!DOCTYPE html>
    <html>
    <head>
        <title>System Information</title>
    </head>
    <body>
        <h3>System Information</h3>
        <pre>
        CPU Information:
        $CPU_INFO

        Date and Time:
        $DATE_INFO

        Disk Space:
        $DISK_INFO
        </pre>
    </body>
    </html>
EOF

    # Log debug information
    echo "HTML file updated at $(date)"

    # Restart Nginx to apply changes
    systemctl restart nginx

    # Wait for 1 second before the next iteration
    # sleep 1
done
