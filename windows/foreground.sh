apt-get install -y python; git clone https://github.com/novnc/noVNC.git; wget https://raw.githubusercontent.com/zuhito/node-red-playground/master/windows/index.html; mv index.html noVNC/index.html; sh -c "noVNC/utils/launch.sh --listen 8080 --vnc localhost:5901 &"; apt-get update; apt-get install -y qemu-system-x86; wget https://az792536.vo.msecnd.net/vms/VMBuild_20190311/HyperV/MSEdge/MSEdge.Win10.HyperV.zip; unzip MSEdge.Win10.HyperV.zip; qemu-system-x86_64 -m 1024 -smp 2 -hda Virtual\ Hard\ Disks/MSEdge\ -\ Win10.vhdx -vnc :1;
