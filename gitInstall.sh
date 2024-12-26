#!/bin/bash -xv

# It will install git on any OS or Linux distribution you are using
# Author: Vaishnavi Buradkar
# Date: 26 Dec 2024
#
#
echo "Git Installation script"
if command -v apt &>/dev/null; then
	echo "It is linux and Debian distribution"
	echo "Installing Git.."
	sudo apt update
	sudo apt install git
	echo "Installation Complete";
elif command -v yum &>/dev/null; then
	echo "It is Linux and Centos/RHEL distribution"
	echo "Installing Git.."
	sudo yum update
	sudo yum install git
	echo "Installation Complete";
elif "$(uname)" = "Darwin"; then
	echo "It is MacOs"
	echo "Installing Git.."
	brew install git 
	echo "Installation Complete";
else
	echo "Unable to install.";
fi
	

