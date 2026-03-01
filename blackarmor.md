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
$ sudo mount -v -t nfs filevault.home:/DataVolume/arkisto /mnt/nas/arkisto
$ sudo umount -f -l /mnt/nas/arkisto
```

## Troubleshooting

```
mount.nfs: Protocol not supported for filevault.home:/DataVolume/backup on /mnt/filevault/backup
```

1. NAS is not on-line (I have problems with my router).
2. NAS requires clients' IP address whitelisted. I don't have static IP addresses configured so have to add new addresses every now and then.
