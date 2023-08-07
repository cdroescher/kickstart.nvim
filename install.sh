#!/usr/bin/sh

NVIM_PDE=~/.config/pde
export NVIM_PDE

rm -rf $NVIM_PDE

mkdir -p $NVIM_PDE/share
mkdir -p $NVIM_PDE/nvim

stow --restow --target=$NVIM_PDE/nvim .

alias pde='$XDG_CONFIG_HOME=$NVIM_PDE nvim' 

export pde
