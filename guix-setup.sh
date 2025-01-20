mkdir /mnt/etc/wpa_supplicant
cp wpa_supplicant.conf /mnt/etc/wpa_supplicant/
cp channels.scm /mnt/etc/
cp /mnt/etc/config.scm config.installer.scm
cp config.v3.scm config.edit.scm
echo "Please edit ./config.edit.scm to have the disk uuids from ./config.installer.scm"
# Open vim with both files
vim -o config.edit.scm config.installer.scm
