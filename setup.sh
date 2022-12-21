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
            dnf update && sudo dnf -y install tmux && sudo dnf install -y neovim python3-neovim
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
