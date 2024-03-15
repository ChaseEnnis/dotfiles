#!/bin/bash

# Check if running as root
if [[ "$(id -u)" -eq 0 ]]; then
    echo "Script is running as root"

    # Check if apt is available
    if command -v apt &>/dev/null; then
        echo "apt is installed, proceeding with package installation..."
        apt update
        apt install -y \
            nmap \
            git \
            sl \
            ninvaders \
            dnsutils \
            libgl1-mesa-glx \
            libegl1-mesa \
            libxrandr2 \
            libxrandr2 \
            libxss1 \
            libxcursor1 \
            libxcomposite1 \
            libasound2 \
            libxi6 \
            libxtst6
    else
        echo "apt is not available. Please install packages manually."
        exit 1
    fi

    # Anaconda installation
    if [[ -e $(ls Anaconda3*.sh 2>/dev/null | head -1) ]]; then
        echo "Anaconda installer found, running it..."
        # Uncomment the following lines to install Anaconda
        # bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
        # echo "export PATH=\$PATH:~/anaconda3/bin" >> ~/.bashrc
    else
        echo "Downloading Anaconda installer..."
        # Uncomment the following lines to download Anaconda
        # curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
        # bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
        # echo "export PATH=\$PATH:~/anaconda3/bin" >> ~/.bashrc
    fi

    # Execute regular user tasks
    sudo -u "$SUDO_USER" bash ~/dotfiles/git.sh
else
    echo "Script is not running as root, exiting..." >&2
    exit 1
fi
