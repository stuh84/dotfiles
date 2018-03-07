#!/bin/sh

mkdir ~/git/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
https://github.com/dylanaraps/neofetch.git ~/git/neofetch && cd ~/git/neofetch && sudo make install