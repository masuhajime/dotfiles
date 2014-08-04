#!/bin/bash

# git completion
curl -o ~/dotfiles/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

DOT_FILES=(git-completion.bash .vim .vimrc)

for file in ${DOT_FILES[@]}
do
    cmd="ln -nfs $HOME/dotfiles/$file $HOME/$file"
    $cmd
    echo $cmd
done

echo "###"
echo "$ echo \"source ~/.git-completion.bash\" >> ~/.bash_profile"
echo "$ source ~/.bash_profile"
