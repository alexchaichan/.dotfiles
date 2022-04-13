```
sudo pacman -S git vim neovim ranger feh zathura htop khal khard neofetch alacritty pavucontrol spotifyd mpv alsa-utils bat brightnessctl firefox fzf i3blocks i3status jupyter neomutt pandoc pulseaudio pulseaudio-alsa python-pip python-magic python-tldextract r speedtest-cli texinfo texlive-core texlive-latexextra texlive-science thunar thunar-volman tk tmux vdirsyncer xboard zathura-pdf-poppler youtube-dl

# npm node yarn

pip install adblock

sudo ln -sf ~/Dropbox/.config/linux/pacman.conf /etc

yaourt -S zaread-git nerd-fonts-source-code-pro dropbox spotify-tui zoom b43-firmware b43legacy-firmware



mkdir ~/.config/systemd/
mkdir ~/.config/systemd/user/
cp ~/Dropbox/.config/linux/dropbox.service ~/.config/systemd/user/

systemctl --user start dropbox
systemctl --user status dropbox # check status
systemctl --user enable dropbox

cp ~/Dropbox/.config/linux/spotifyd/ ~/.config/
cp ~/Dropbox/.config/linux/spotify-tui/ ~/.config/

ln -sf ~/Dropbox/.config/linux/.xinitrc ~/
ln -sf ~/Dropbox/.config/zsh/.zshrc_linux ~/.zshrc
ln -sf ~/Dropbox/.config/vdirsyncer ~/.config
ln -sf ~/Dropbox/.config/linux/zathura ~/.config
ln -sf ~/Dropbox/.config/ranger ~/.config
ln -sf ~/Dropbox/.config/.qutebrowser ~/.config/qutebrowser
ln -sf ~/Dropbox/.config/khard ~/.config
ln -sf ~/Dropbox/.config/khal ~/.config
ln -sf ~/Dropbox/.config/linux/alacritty.yml ~/.config
ln -sf ~/Dropbox/.config/linux/.tmux.conf ~/
ln -sf ~/Dropbox/.config/.qutebrowser/bookmarks/urls ~/
ln -sf ~/Dropbox/Templates ~/
ln -sf ~/Dropbox/.config/linux/.mailcap ~/
ln -sf ~/Dropbox/.config/linux/.bash_profile ~/
ln -sf ~/Dropbox/.config/linux/.bashrc ~/
ln -sf ~/Dropbox/.config/.mbsyncrc ~/
ln -sf ~/Dropbox/.config/.mutt/.muttrc ~/
ln -sf ~/Dropbox/.config/zsh/.p10k.zsh ~/
ln -sf ~/Dropbox/.config/nvim ~/.config
ln -sf ~/Dropbox/.config/.password-store ~/
ln -sf ~/Dropbox/.config/.gnupg ~/
ln -sf ~/Dropbox/.config/nvim/spell ~/.local/share/nvim/site 


cp ~/Dropbox/.config/linux/spotifyd/ ~/.config/
cp ~/Dropbox/.config/linux/spotify-tui/ ~/.config/

```



