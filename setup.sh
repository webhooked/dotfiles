#!/bin/bash

case "$OSTYPE" in
  darwin*) 
      echo "OSX" 
        brew install tmux
      ;; 
  linux*)   
      echo "LINUX" 
      source /etc/os-release
        case $ID in
            debian|ubuntu|mint)
            apt update
        ;;

        fedora|rhel|centos)
            dnf update && sudo dnf -y install tmux && sudo dnf install -y neovim python3-neovim;
            git clone git@github.com:webhooked/dotfiles.git;
            mkdir ~/.config/nvim && ln -s ~/dotfiles/nvim ~/.config/nvim && ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf; 
        ;;

        *)
        echo -n "unsupported linux distro"
        ;;
    esac
      ;;
  *)        
      echo "unknown: $OSTYPE" 
      ;;
esac
