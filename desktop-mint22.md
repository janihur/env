# Linux Mint 22 Desktop Setup Notes

## Apple Wireless Mouse

Apple Magic Mouse (Bluetooth) setup:
```bash
bluetoothctl scan on
```

Then press search in `blueman-manager`.

For some reason the search didn't find the mouse before `bluetoothctl` command.

For some reason invertíng the mouse buttons (i.e. left-handed use) made the buttons "inaccurate" and very confusing.

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
