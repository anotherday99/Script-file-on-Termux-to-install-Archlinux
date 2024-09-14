echo ""
echo ""
echo "正在更改部分权限，请耐心等待"
echo ""
echo ""

chmod 755 -R /bin /home /mnt /run /srv /tmp /var /boot /etc /lib /opt /root /sbin /sys /usr
systemctl disable systemd-resolved.service
rm /etc/resolv.conf
mv resolv.conf /etc
echo "disable-scdaemon" > /etc/pacman.d/gnupg/gpg-agent.conf
pacman-key --init
pacman-key --populate archlinuxarm

echo "重要事项"
echo ""
echo ""
echo "如果您使用的是 Android 9 及更高版本，您可能遇到此错误："
echo ""
echo "could not change the root directory (Function not implemented)"
echo ""
echo "只需忽略它，因为它不会做任何有害的事情"
echo ""
echo ""
echo "如果您遇到任何错误，请再次重新运行此脚本："
echo ""
echo "./additional.sh"