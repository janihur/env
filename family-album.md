# Family Album

All the family photos:

1. Master: `~/Pictures/family-album/`
1. Local backup: `/mnt/filevault/valokuvat/family-album/`
1. Remote backup: `mini-1.private.cloud:/mnt/family-pictures/`

## Tooling

TODO shell scripts

```
find ~/Pictures/family-album -type f -perm -u+w -exec chmod a=r '{}' \;
```

Local backup:
```
rsync -hprtP ~/Pictures/family-album/ /mnt/filevault/valokuvat/family-album

find /mnt/filevault/valokuvat/family-album -type f -perm -u+w -exec chmod a=r '{}' \;
```

Remote backup:
```
rsync -hprtP ~/Pictures/family-album/ mini-1.private.cloud:/mnt/family-pictures
```
