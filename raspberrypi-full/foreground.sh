git clone https://github.com/novnc/noVNC.git; cp noVNC/vnc.html noVNC/index.html; sh -c "noVNC/utils/launch.sh --listen 8080 --vnc localhost:5901 &"; apt-get update; apt-get install -y qemu; wget https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/kernel-qemu-4.19.50-buster; wget https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/versatile-pb-buster.dtb; wget https://downloads.raspberrypi.org/raspios_full_armhf_latest; unzip raspios_full_armhf_latest; mv *.img raspbian_full_latest.img; qemu-system-arm -kernel kernel-qemu-4.19.50-buster -dtb versatile-pb-buster.dtb -m 256 -M versatilepb -cpu arm1176 -append "rw console=ttyAMA0 root=/dev/sda2 rootfstype=ext4 loglevel=8 rootwait fsck.repair=yes memtest=1" -drive file=raspbian_full_latest.img,format=raw -net nic -net user,hostfwd=tcp::5902-:5901,hostfwd=tcp::1880-:1880 -no-reboot -vga std -nographic -vnc :1;
