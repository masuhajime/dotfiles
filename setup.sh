#!/bin/bash

echo "### setup start ###"

# git completion
curl -o ~/dotfiles/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
mv ~/dotfiles/git-completion.bash ~/dotfiles/.git-completion.bash
cp ~/dotfiles/.gitconfig.sample ~/dotfiles/.gitconfig

echo "### cleate links ###"
create_link () {
    cmd="ln -nfs $HOME/dotfiles/$1 $HOME/$file"
    $cmd
    echo $cmd
}
create_link ".git-completion.bash"
create_link ".gitconfig"
create_link ".vim"
create_link ".vimrc"

echo "### clone neobundle ###"
cmd="curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo $cmd

echo "### setup end ###"

echo "### TODO ###"
echo "$ echo \"source ~/.git-completion.bash\" >> ~/.bash_profile"
echo "$ source ~/.bash_profile"
echo "git config --global user.name <name>"
echo "git config --global user.email <email>"
echo "############"

