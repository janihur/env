# env

Opinionated personal computer setup.

This is the next iteration of [jcode](https://bitbucket.org/janihur/jcode/).

Branches:
* `mint22` - [Linux Mint](https://www.linuxmint.com/) [22](https://www.linuxmint.com/rel_wilma.php) desktop. See also [Linux Mint 22 Desktop Setup Notes](desktop-mint22.md)

## SSH Key

Create new SSH key:
```
ssh-keygen -t -rsa -b 4096 -C 'jani@somewhere'
```

Add the public key to [GitHub](https://github.com/) and [Bitbucket](https://bitbucket.org/).

Check you can authenticate:
```
ssh -T git@github.com
ssh -T git@bitbucket.org
```

## Essential Linux Tooling

```
sudo apt-add-repository ppa:ansible/ansible
sudo apt update

sudo apt install -y ansible git
```

## How To Run

```
ansible-playbook -vv default.yml --connection=local --ask-become-pass
```
