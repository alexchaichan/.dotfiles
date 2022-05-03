```

# imac 2008
#yaourt -S b43-firmware b43legacy-firmware

mkdir ~/.config/systemd/
mkdir ~/.config/systemd/user/
cp ~/Dropbox/.config/linux/dropbox.service ~/.config/systemd/user/

systemctl --user start dropbox
systemctl --user status dropbox # check status
systemctl --user enable dropbox



ln -sf ~/Dropbox/.config/nvim/spell ~/.local/share/nvim/site 



```



1. bluetoothctl
2. power on
3. agent on
4. default-agent
5. scan on
6. devices
7. trust [NUMBER]
8. pair [NUMBER]
9. connect [NUMBER]

use `pavucontrol` to control sound
