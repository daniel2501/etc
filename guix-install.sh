
echo "Copying config.edit.scm to /mnt/etc/config.scm, and installing guix."
cp config.edit.scm /mnt/etc/config.scm
guix time-machine -C /mnt/etc/channels.scm -- system init /mnt/etc/config.scm /mnt --substitute-urls='https://ci.guix.gnu.org https://bordeaux.guix.gnu.org https://substitutes.nonguix.org'

