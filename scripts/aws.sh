#!/bin/bash


#!/bin/bash

aws_install() {
    # Check if AWS CLI is already installed
    if command -v aws &> /dev/null; then
        echo "[INFO] AWS CLI is already installed."
        return
    fi

    sudo apt install unzip -y  # Automatically answer yes to the prompt
    yes | curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  # Automatically answer yes to the prompt
    unzip -o awscliv2.zip  # Overwrite existing files without prompting
    sudo ./aws/install <<<"y"  # Automatically answer yes to the prompts
}

aws_install

