# archlinux_imac_2008


### setup brand new disk

- setup disk

```
fdisk /dev/sda

# check disk (must be empty)

p # print command

g # create new gpt partition

# 1st partition (efi)

n # creat first one (default 1) #
      # 1st sector default
+500 # 2nd sector  efi-boot-partition

t # create type for partition
1 # efi System

# 2nd partition (linux)

n # create 2nd partition
  # 1st sector default
  # 2nd sector default

t  # type
20 # linux filesystem

w # write changes
```




- format partition

```
# 1st partition

mkfs.fat -F32 /dev/sda1
```

- mount partitions


```
mkfs.ext4 /dev/sda2

mount /dev/sda2 /mnt
```

- generate genfstab

```
mkdir /mnt/etc

genfstab -U -p /mnt >> /mnt/etc/fstab
```



## install archlinux


- install all components

```
pacstrap /mnt base
```



- configure root

```
arch-chroot /mnt
```

- install all components

```
pacman -S linux linux-headers linux-firmware vim base-devel openssh networkmanager wpa_supplicant netctl wireless_tools dialog lvm2
```

- `systemctl enable NetworkManager`
- `systemctl enable sshd`


- `mkinitcpio -p linux`


- enable locale

```
vim /etc/locale.gen # uncomment en_UTF-8.UTF

locale-gen
```



- set password

`passwd`

- create user

```
useradd -mG wheel imac  # create new user

passwd imac  # create password for user
```

- enable sudo to all users

```
EDITOR=vim visudo

# uncomment &wheel ALL=(ALL) ALL
```




- enable locale + stuff

```
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

hwclock --systohc

echo LANG=en_US.UTF-8 >> /etc/locale.conf

echo KEYMAP=de-latin1 >> /etc/vconsole.conf
echo FONT=lat9w-16 >> /etc/vconsole.conf
```



- set hostname 

```
vim /etc/hostname

# type hostname

vim /etc/hosts

# type settings below

127.0.0.1	localhost

::1 localhost

127.0.0.1	archuser.localdomain archuser
```




### install grub

`pacman -S grub dosfstools os-prober mtools efibootmgr`

- make efi boot directory

```
mkdir /boot/EFI

mount /dev/sda1 /boot/EFI # mount efi 
```


- install grub for real

`grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck`

`grub-mkconfig -o /boot/grub/grub.cfg `



- `exit # exit chroot`

- `umount -a`

- `reboot`



- install wifi 
: b43legacy-firmware


- install audio
: pulseaudio
: pulseaudioalsa
: alsa
: alsa-utils


