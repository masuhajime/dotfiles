wip



```
vim .ssh/config
Host github
    HostName github.com
    User git
vim ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
```

# how to use
```
$ cd ~ && git clone git@github.com:masuhajime/dotfiles.git && sh ~/dotfiles/setup.sh
$ cd ~/dotfiles/ && git submodule update --init
```
