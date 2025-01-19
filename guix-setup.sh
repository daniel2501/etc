mkdir /mnt/etc/wpa_supplicant
cp wpa_supplicant.conf /mnt/etc/wpa_supplicant/
cp config.v3.scm /mnt/etc/
cp channels.scm /mnt/etc/
guix time-machine -C /mnt/etc/channels.scm -- system init /mnt/etc/config.scm /mnt --substitute-urls='https://ci.guix.gnu.org https://bordeaux.guix.gnu.org https://substitutes.nonguix.org'

