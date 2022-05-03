```
sudo pacman -S git vim neovim ranger feh zathura htop khal khard neofetch alacritty pavucontrol spotifyd mpv alsa-utils bat brightnessctl firefox fzf i3blocks i3status jupyter neomutt pandoc pulseaudio pulseaudio-alsa python-pip python-magic python-tldextract r speedtest-cli texinfo texlive-core texlive-latexextra texlive-science thunar thunar-volman tk tmux vdirsyncer xboard zathura-pdf-poppler youtube-dl

# npm node yarn

pip install adblock

sudo ln -sf ~/Dropbox/.config/linux/pacman.conf /etc

yaourt -S zaread-git nerd-fonts-source-code-pro dropbox spotify-tui zoom miniconda3

# imac 2008
#yaourt -S b43-firmware b43legacy-firmware

mkdir ~/.config/systemd/
mkdir ~/.config/systemd/user/
cp ~/Dropbox/.config/linux/dropbox.service ~/.config/systemd/user/

systemctl --user start dropbox
systemctl --user status dropbox # check status
systemctl --user enable dropbox



ln -sf ~/Dropbox/.config/nvim/spell ~/.local/share/nvim/site 

cp ~/Dropbox/.config/linux/spotifyd/ ~/.config/
cp ~/Dropbox/.config/linux/spotify-tui/ ~/.config/

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
