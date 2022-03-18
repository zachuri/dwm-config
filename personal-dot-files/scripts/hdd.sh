#!/bin/bash
#icons depend on nerdfonts being installed
hdd() {
      free="$(df -h /home | grep /dev | awk '{print $3}' | sed 's/G/Gb/')"
      perc="$(df -h /home/ | grep /dev | awk '{print $5}')"
      
echo "$perc  ($free)"
    }
echo "$(hdd)"
#echo "ﴤ $(hdd)"
