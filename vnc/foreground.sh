apt-get install -y vnc4server
printf "password\npassword\n\n" | vnc4passwd
vncserver -geometry 1366x768
sudo snap install novnc
novnc --listen 8080 --vnc localhost:5901
