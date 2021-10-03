availableRAMcommand="free -m | tail -2 | head -1 | awk '{print \$7}'"
availableRAM=$(echo $availableRAMcommand | bash)
custom_param_ram="-m "$(expr $availableRAM)"M"
cpus=$(lscpu | grep CPU\(s\) | head -1 | cut -f2 -d":" | awk '{$1=$1;print}')
apt-get install -y python; git clone https://github.com/novnc/noVNC.git; wget https://raw.githubusercontent.com/zuhito/node-red-playground/master/windows/index.html; mv index.html noVNC/index.html; sh -c "noVNC/utils/launch.sh --listen 8080 --vnc localhost:5901 &"; apt-get update; apt-get install -y qemu-kvm; curl -L -o lite11.qcow2 https://bit.ly/38ZYSq3;  qemu-system-x86_64 -nographic -net nic -net user,hostfwd=tcp::30889-:3389 -show-cursor $custom_param_ram -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=$cpus -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=lite11.qcow2,index=0,media=disk,format=qcow2 -boot once=d -vnc :1;
