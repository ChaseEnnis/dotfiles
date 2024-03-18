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
	if [[ -d "$HOME/anaconda3" ]]; then
    		echo "Anaconda is already installed."
	else
    		if [[ -e $(ls Anaconda3*.sh 2>/dev/null | head -1) ]]; then
        		echo "Anaconda installer found, running it..."
        		bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
        		echo "export PATH=\$PATH:~/anaconda3/bin" >> ~/.bashrc
			rm Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
    	else
        	echo "Downloading Anaconda installer..."
       		curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
        	bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
        	echo "export PATH=\$PATH:~/anaconda3/bin" >> ~/.bashrc
    		rm Anaconda3-2024.02-1-Linux-x86_64.sh -b -p ~/anaconda3
		fi
	fi

else
    echo "Script is not running as root, exiting..." >&2
    exit 1
fi

non_sudo() {
    bash ~/dotfiles/scripts/git.sh
    bash ~/dotfiles/scripts/ssh.sh
    bash ~/dotfiles/scripts/aws.sh
    bash ~/dotfiles/scripts/vim.sh
    bash ~/dotfiles/scripts/bashrc.sh
}

export -f non_sudo
su "$SUDO_USER" -c "non_sudo" 
