# install archlinux on a micro sd

- settings (keyboard, font, etc.) 

```
loadkeys de-latin1

setfont lat9w-16

timedatectl set-ntp true
```

- creating partitions

```
#1. boot partition

gdisk /dev/sdc


#1. default 
#2. 
+200M
#3.
ef00

#2. root partition

#1. #2. #3. default

w

lsblk
```



```
mkfs.fat -F32 /dev/sdc1
mkfs.ext4 -O "^has_journal" /dev/sdc2
mount /dev/sdc2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sdc1 /mnt/boot/efi
lsblk
```





- install system

```
pacstrap /mnt base linux linux-firmware vim
```

- generate fstab and modifie

```
genfstab -U /mnt >> /mnt/etc/fstab
```




- systemconfiguration

```
arch-chroot /mnt
```

- set timezone

```
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

hwclock --systohc
```

- locale

```
vim /etc/locale.gen

# uncomment en_US.UTF-8 UTF-8

locale-gen

echo LANG=en_US.UTF-8 >> /etc/locale.conf
```



- keymap

```
echo KEYMAP=de-latin1 > /etc/vconsole.conf
echo FONT=lat9w-16 >> /etc/vconsole.conf
```


- hostname

```
echo archuser > /etc/hostname
```


- set host

```
vim /etc/hosts


#<ip-address>	<hostname.domain.org>	<hostname>

127.0.0.1	localhost

::1 localhost

127.0.0.1	archuser.localdomain archuser
```


- passwd

```
passwd
```


- install packages

```
pacman -S grub efibootmgr networkmanager network-manager-applet mtools dosfstools reflector git base-devel linux-headers bluez bluez-utils cups xdg-utils xdg-user-dirs
```



- setup mkinitcpio

```
vim /etc/mkinitcpio.conf

#insert 

HOOKS=(base udev block keyboard autodetect modconf filesystems fsck)
```

- create initramfs

```
mkinitcpio -p linux
```

- configure grub

```
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --removable --recheck

grub-mkconfig -o boot/grub/grub.cfg
```

- enable services

```
systemctl enable NetworkManager

systemctl enable bluetooth

systemctl enable org.cups.cupsd
```

- add user

```
useradd -mG wheel linuxuser

passwd linuxuser
```



- grant sudo

```
EDITOR=vim visudo

# uncomment

%wheel ALL=(ALL) ALL
```


- `exit` chroot

```
umount -a
```

- `reboot`



- set up wifi

```
sudo su

cd

#setup wifi

nmtui
```


```
mkdir /etc/systemd/journal.conf.d

vim /etc/systemd/journal.conf.d/flash.conf

# insert lines

[Journal]
Storage=volatile
RuntimeMaxUse=30M
```

- install graphik driver

```
pacman -S xf86-video-vesa xf86-video-ati xf86-video-intel xf86-video-amdgpu xf86-video-nouveau
```




- disable KMS (not neccesary)

```
vim /etc/default/grub

# modify line: 

GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nomodeset"
```


- install packages

```
pacman -S konsole firefox

#accept all defaults
```

`exit`

`reboot`



 

