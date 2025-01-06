# Linux Mint 22 Desktop Setup Notes

## Apple Wireless Mouse

Apple Magic Mouse (Bluetooth) setup:
```bash
bluetoothctl scan on
```

Then press search in `blueman-manager`.

For some reason the search didn't find the mouse before `bluetoothctl` command.

For some reason invertíng the mouse buttons (i.e. left-handed use) made the buttons "inaccurate" and very confusing.

## Buffalo MiniStation Thunderbolt

* https://www.buffalotech.com/products/ministation-thunderbolt

The disk is formatted with [HFS Plus](https://en.wikipedia.org/wiki/HFS_Plus) file system developed by Apple. However Linux has good support for it. The only problem is the disk is mounted read-only by default.

```
$ df -aTh | grep /dev/sd | sort
Filesystem     Type             Size  Used Avail Use% Mounted on
/dev/sda1      vfat             511M  6,2M  505M   2% /boot/efi
/dev/sda2      ext4             229G   23G  195G  11% /
/dev/sdb2      hfsplus          932G   16G  916G   2% /media/jani/BuffaloMS
```

```
$ lsblk | grep sdb
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sdb      8:16   0 931,5G  0 disk 
├─sdb1   8:17   0   200M  0 part 
└─sdb2   8:18   0 931,2G  0 part /media/jani/BuffaloMS
```

```
$ findmnt /dev/sdb2
TARGET                SOURCE    FSTYPE  OPTIONS
/media/jani/BuffaloMS /dev/sdb2 hfsplus ro,nosuid,nodev,relatime,umask=22,uid=1000,gid=1000,nls=utf8
```

```
$ sudo fsck.hfsplus /dev/sdb2 
** /dev/sdb2
   Executing fsck_hfs (version 540.1-Linux).
** Checking Journaled HFS Plus volume.
   The volume name is BuffaloMS
** Checking extents overflow file.
** Checking catalog file.
** Checking multi-linked files.
** Checking catalog hierarchy.
** Checking extended attributes file.
** Checking volume bitmap.
** Checking volume information.
** The volume BuffaloMS appears to be OK.
```

Just force remount as `rw` (from [SuperUser](https://superuser.com/a/365270/78916)):
```
sudo mount -t hfsplus -o remount,force,rw /dev/sdb2 /media/jani/BuffaloMS
```

And now the disk is writable:
```
$ findmnt /dev/sdb2
TARGET                SOURCE    FSTYPE  OPTIONS
/media/jani/BuffaloMS /dev/sdb2 hfsplus rw,relatime,umask=22,uid=1000,gid=1000,nls=utf8
```

## Password Store

The default location is `~/.password-store`.

How to export/import the secret key:
```
# list keys
gpg --list-secret-keys --keyid-format long
# export
gpg --output private.pgp --armor --export-secret-key <KEY_ID>
# import
gpg --import private.pgp
```

## Firefox Setup

Enable Firefox account sync. For other settings see [firefox](http://devoops.metsankulma.net/firefox.html).

## Thunderbird Setup

See [Email client configuration overview](https://help.dreamhost.com/hc/en-us/articles/214918038-Email-client-configuration-overview).

```
Menu
 > View
  > Layout
   > Select: Classic View
```

```
Settings
 > Composition
  > Spelling
   > Uncheck: Enable spellcheck as you type
```

```
Menu
 > Tools
  > Message Filters
```
