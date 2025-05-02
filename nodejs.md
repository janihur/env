# node.js

IMO [node.js](https://nodejs.org/en) is just PITA, YMMV.

Use [locally installed](roles/swdev/tasks/nvm.yml) [nvm](https://github.com/nvm-sh/nvm) to manage the `node.js` version(s).

Activate `nvm`:
```
source ./.nvm/activate.sh
```

Install current `node` LTS version:
```
nvm install --lts
```

Use version:
```
$ nvm use --lts
Now using node v22.15.0 (npm v10.9.2)
$ nvm current
v22.15.0
$ node --version
v22.15.0
$ type node
node is hashed (/home/jani/.nvm/versions/node/v22.15.0/bin/node)
```

`npm` version:
```
$ type npm
npm is hashed (/home/jani/.nvm/versions/node/v22.15.0/bin/npm)
$ npm --version
10.9.2
```

`npm` config:
```
npm config list

# global directory where modules are installed when --global flag enable
$ npm config set prefix $HOME
$ cat ~/.npmrc 
prefix=/home/jani
```
