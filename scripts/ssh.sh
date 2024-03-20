#!/bin/bash

ssh_setup() {

# Check if ~/.ssh directory exists, if not create it
if [ ! -d ~/.ssh ]; then
    mkdir -p ~/.ssh
fi

# Copy the ~/.ssh/authorized_keys file to the repository
cp ~/.ssh/authorized_keys ~/dotfiles/ssh/authorized_keys

# Symbolically link ~/.ssh/authorized_keys to the repository
ln -sf ~/dotfiles/ssh/authorized_keys ~/.ssh/authorized_keys

# Create ~/.ssh/config file with an entry for fry.cs.wright.edu
echo 'Host fry.cs.wright.edu' >> ~/.ssh/config
echo '    HostName fry.cs.wright.edu' >> ~/.ssh/config

# Symbolically link ~/.ssh/config to the repository
ln -sf ~/dotfiles/ssh/config ~/.ssh/config

echo "SSH setup complete."


}


ssh_setup
