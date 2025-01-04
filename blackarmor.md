# Seagate BlackArmor NAS 220 Setup Notes

Seagate [product page](https://www.seagate.com/gb/en/support/external-hard-drives/network-storage/blackarmor-nas-220/).

## Find Out Server In The Local Network
```
$ nmap -n -sn 172.10.0.0/24
```

## Static IP Configuration

Static IP configuration in my home network:

In BlackArmor admin console:
```
Network
 > LAN
  > Network Mode: Static
  > IP address: 172.10.0.12
  > Netmask: 255.255.255.0
  > Default Gateway: 172.10.0.1
```

## Mounting

How to mount the shares in Linux:
* My [answer](https://askubuntu.com/a/1537181/18928) to the Ask Ubuntu website [question](https://askubuntu.com/q/1189235/18928).

Mount/unmount example:
```
$ sudo mount -t nfs filevault.home:/DataVolume/arkisto /mnt/nas/arkisto
$ sudo umount -f -l /mnt/nas/arkisto
```
