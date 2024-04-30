#!/bin/bash



apt-get update -y  # perform update command to update the server


# Update the apt package index
sudo apt update

# Install necessary dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Determine the Ubuntu version
ubuntu_version=$(lsb_release -cs)

# Add the Docker repository to the system based on the Ubuntu version
if [ "$ubuntu_version" = "focal" ] || [ "$ubuntu_version" = "jammy" ]; then
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
elif [ "$ubuntu_version" = "bionic" ]; then
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
else
    echo "Unsupported Ubuntu version: $ubuntu_version"
    exit 1
fi

# Update the apt package index again
sudo apt update

# Install Docker CE
sudo apt install -y docker-ce

# Verify Docker installation
docker --version

# Optionally, add the current user to the docker group
sudo usermod -aG docker $USER

echo "Docker has been successfully installed."
echo "You may need to log out and log back in for group changes to take effect."


# Run
# sudo chmod +x docker.sh
# sudo mv docker.sh /usr/local/bin  #  if we move it to bin then in next time we dont need to use or apply (sh or ./ ) before shell script file