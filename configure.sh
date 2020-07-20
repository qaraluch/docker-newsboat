#!/usr/bin/env sh
# installation script for:
# newsboat RSS client
# Author: qaraluch - 07.2020

git clone --depth 1 https://github.com/qaraluch/lists.git $HOME/lists
git clone --depth 1 https://github.com/qaraluch/qdots.git $HOME/qdots

mkdir -p "$HOME/.config/newsboat/"

cp -fv "$HOME/lists/newsboat/urls" "$HOME/.config/newsboat/"
cp -fv "$HOME/qdots/dot_config/newsboat/config" "$HOME/.config/newsboat/"

rm -rf ~/lists
rm -rf ~/qdots
