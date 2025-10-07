# Bootable USB

* [ventoy](https://github.com/ventoy/Ventoy)
* [shreados](https://github.com/PartialVolume/shredos.x86_64)
* [Linux Mint](https://www.linuxmint.com/download.php)

```
tar zxf ventoy-1.0.99-linux.tar.gz
cd ventoy-1.0.99
ventoy-1.0.99$ ./VentoyGUI.x86_64
```

```
$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
[...]
sdc      8:48   1   3,8G  0 disk 
├─sdc1   8:49   1   3,7G  0 part /media/jani/Ventoy
└─sdc2   8:50   1    32M  0 part 
```

Copy ISO images to the `ventoy` partition.

List details:
```
ventoy-1.1.07$ sudo sh Ventoy2Disk.sh -l /dev/sdc

**********************************************
      Ventoy: 1.1.07  x86_64
      longpanda admin@ventoy.net
      https://www.ventoy.net
**********************************************

Ventoy Version in Disk: 1.0.99
Disk Partition Style  : MBR
Secure Boot Support   : YES
```

Update Ventoy on USB disk:
```
ventoy-1.1.07$ sudo sh Ventoy2Disk.sh -u /dev/sdc

**********************************************
      Ventoy: 1.1.07  x86_64
      longpanda admin@ventoy.net
      https://www.ventoy.net
**********************************************

Upgrade operation is safe, all the data in the 1st partition (iso files and other) will be unchanged!

Update Ventoy  1.0.99 ===> 1.1.07   Continue? (y/n) y
esp partition processing ...

Update Ventoy on /dev/sdc successfully finished.
```
