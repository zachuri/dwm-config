#!/bin/bash
#icons depend on nerdfonts being installed
mem() {
used="$(free | grep Mem: | awk '{print $3}')"
total="$(free | grep Mem: | awk '{print $2}')"
human="$(free -h | grep Mem: | awk '{print $3}' | sed s/i//g)"

ram="$(( 200 * $used/$total - 100 * $used/$total ))%  ($human)"

echo $ram
}

echo "$(mem)"
#echo " $(mem)"

