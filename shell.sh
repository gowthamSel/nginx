#!/bin/bash

while true; do
   sh ./system_info.sh &
   echo "Second script is doing some additional work..."
   sleep 5
   echo "Second script completed its additional work."
    # Wait for a while before starting the next iteration
   sleep 2
done
