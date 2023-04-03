#!/bin/bash

# List of packages to install
packages=(
  python3
  nano
  curl
  # add more packages here as needed
)

# Update package information
apt-get update
apt-get install sudo
# Install packages
for p in "${packages[@]}"
do
  sudo apt-get install -y "$p"
done

# install pip
curl https://bootstrap.pypa.io/get-pip.py --Output get-pip.py
python3 get-pip.py
rm get-pip.py
python3 -m pip install --upgrade pip

# run chmod +x installer.sh to give executable permissions
# run ./installer to execute this file
