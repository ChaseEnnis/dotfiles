#!/bin/bash


gitsetup () {

# Ensure script is executed in the dotfiles directory
cd "$(dirname "$0")"

# Symbolic link for gitconfig
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig

# Symbolic link for bashrc
ln -sf "$(pwd)/.bashrc" ~/.bashrc

# Symbolic link for authorized_keys (assuming it's for SSH config)
ln -sf "$(pwd)/authorized_keys" ~/.ssh/config

# Install Vim plugins

# Check if ~/.vim/pack/plugins/start directory exists
    if [ ! -d ~/.vim/pack/plugins/start ]; then
        mkdir -p ~/.vim/pack/plugins/start
    fi
# Change directory to ~/.vim/pack/plugins/start
    cd ~/.vim/pack/plugins/start || exit

    # Install Vim plugins
    git clone https://github.com/altercation/vim-colors-solarized.git
    git clone https://github.com/preservim/nerdtree.git

# Set up git configuration
git config --global user.name "Chase Ennis"
git config --global user.email "ennis.18@wright.edu"
git config --global core.editor "vim"
git config --global core.excludesfile ~/.gitignore_global
git config --global help.autocorrect 1

# Copy default gitignore_global if exists
if [ -e "$(pwd)/gitignore_global" ]; then
    cp "$(pwd)/gitignore_global" ~/.gitignore_global
fi

echo "Git Setup complete." 

}

gitsetup
