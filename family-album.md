# Family Album

All the family photos:

1. Master: `~/Pictures/family-album/`
1. Local backup: `${lacie}/valokuvat/family-album/`
1. Local backup: `${buffalo}/valokuvat/family-album/`
1. Remote backup: `mini-1.private.cloud:/mnt/family-pictures/`

## Tooling

Covered by `roles/p20n/files/backup.sh`.

Make master files read-only:
```
find ~/Pictures/family-album -type f -perm -u+w -exec chmod a=r '{}' \;
```

Local backup:
```
lacie=/media/jani/LaCie750GB
rsync -hprtP ~/Pictures/family-album/ ${lacie}/valokuvat/family-album

buffalo=/media/jani/BuffaloMS
rsync -hprtP ~/Pictures/family-album/ ${buffalo}/valokuvat/family-album
```

Remote backup:
```
rsync -hprtP ~/Pictures/family-album/ mini-1.private.cloud:/mnt/family-pictures
```
