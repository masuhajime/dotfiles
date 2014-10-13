#!/bin/bash

echo "### setup start ###"

# git completion
curl -o ~/dotfiles/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
mv ~/dotfiles/git-completion.bash ~/dotfiles/.git-completion.bash
cp ~/dotfiles/.gitconfig.sample ~/dotfiles/.gitconfig

echo "### cleate links ###"
DOT_FILES=(.git-completion.bash .gitconfig .vim .vimrc)
for file in ${DOT_FILES[@]}
do
    cmd="ln -nfs $HOME/dotfiles/$file $HOME/$file"
    $cmd
    echo $cmd
done

echo "### clone neobundle ###"
cmd="curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo $cmd

echo "### setup end ###"

echo "### TODO ###"
echo "$ echo \"source ~/.git-completion.bash\" >> ~/.bash_profile"
echo "$ source ~/.bash_profile"
echo "############"

