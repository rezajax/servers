#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Change SSH server port
sudo sed -i 's/^#Port 22/Port 1258/' /etc/ssh/sshd_config

# Restart SSH server
# sudo service ssh restart
sudo systemctl restart sshd

# Change password for the currently logged-in user
current_user=$(whoami)
echo "$current_user:reza" | sudo chpasswd

echo "Tasks completed successfully."
