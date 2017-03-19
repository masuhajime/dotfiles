#!/bin/bash

# shell 冪等性
# http://qiita.com/yn-misaki/items/3ec0605cba228a7d5c9a

DIR_DOTFILES="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")"; pwd)"
echo $DIR_DOTFILES

echo "### setup start"
echo "===="

echo "### curl git-completion.bash"
curl -o "$DIR_DOTFILES/.git-completion.bash" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o "$DIR_DOTFILES/.git-prompt.sh" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# .gitconfig
if [ ! -e "$DIR_DOTFILES/.gitconfig" ]; then
  cp "$DIR_DOTFILES/.gitconfig.sample" "$DIR_DOTFILES/.gitconfig"
fi

echo "### cleate links ###"
create_link () {
  cmd="ln -nfs $DIR_DOTFILES/$1 $HOME/$file"
  $cmd
  echo $cmd
}
create_link ".gitconfig"
create_link ".vim"
create_link ".vimrc"

echo "### clone neobundle ###"
cmd="curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo $cmd

echo "### done \(^o^)/"

source_file() {
source > /dev/null 2>&1
  if [ $? -eq 127 ]; then
    . "$1"
  else
    source "$1"
  fi
}

BASH_PROFILE="$HOME/.bash_profile"
FILE_DOTFILES_PROFILE="$DIR_DOTFILES/dotfiles_profile"
TAG="##### dotfiles_profile"
if [ -e $BASH_PROFILE ]; then
  if [ ! "`grep $TAG $BASH_PROFILE`" ]; then
    echo "add source $FILE_DOTFILES_PROFILE to $BASH_PROFILE"
    echo "" >> "$BASH_PROFILE"
    echo "$TAG" >> "$BASH_PROFILE"
    echo "source $FILE_DOTFILES_PROFILE" >> "$BASH_PROFILE"
    source_file "$BASH_PROFILE"
  fi
fi

echo "### TODO ###"
echo "source $BASH_PROFILE"
echo "git config --global user.name <name>"
echo "git config --global user.email <email>"

