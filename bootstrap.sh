#!/bin/bash

# update package cache
sudo apt update
sudo apt upgrade
# install zsh and other prequistes
sudo apt install -y zsh git curl wget build-essential
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# create config directory if it doesn't exist
mkdir -p $HOME/.config
mkdir -p $HOME/.config/antigen
mkdir -p $HOME/.config/starship
# install antigen
curl -L git.io/antigen > $HOME/.config/antigen/antigen.zsh
# install starship prompt
curl -sS https://starship.rs/install.sh | sh
cp ./starship.toml $HOME/.config/starship
# initialize zsh config
rm $HOME/.zshrc
cp ./zshrc.config $HOME/.zshrc
# install minconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ./miniconda.sh
chmod +x ./miniconda.sh
./miniconda.sh
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
rm nvim-linux64.deb
zsh <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
chsh -s /bin/zsh
exec zsh
