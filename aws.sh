#!/bin/bash


aws_install() {

# Check if AWS CLI is already installed
    if command -v aws &> /dev/null; then
        echo "[INFO] AWS CLI is already installed."
        return
    fi
	sudo apt install unzip
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install




}

aws_install
