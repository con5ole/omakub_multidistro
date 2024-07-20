sudo sed -r -i'.BAK' 's/^deb(.*)$/deb\1 contrib/g' /etc/apt/sources.list
sudo apt update
sudo apt install -y linux-headers-amd64 zfsutils-linux zfs-dkms zfs-zed