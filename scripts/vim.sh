#!/bin/bash

# Function to install Vim plugins
install_vim_plugins() {
    # Check if ~/.vim/bundle directory exists
    if [ ! -d ~/.vim/bundle ]; then
        mkdir -p ~/.vim/bundle
    fi

    # Change directory to ~/.vim/bundle
    cd ~/.vim/bundle || exit

    # Clone vim-colors-solarized if not already installed
    if [ ! -d vim-colors-solarized ]; then
        git clone https://github.com/altercation/vim-colors-solarized.git
    else
        echo "vim-colors-solarized already exists. Skipping cloning."
    fi

    # Clone nerdtree if not already installed
    if [ ! -d nerdtree ]; then
        git clone https://github.com/preservim/nerdtree.git
    else
        echo "nerdtree already exists. Skipping cloning."
    fi
}

# Call function to install Vim plugins
install_vim_plugins
