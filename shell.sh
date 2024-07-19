#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Change SSH server port
sudo sed -i 's/^#Port 22/Port 1258/' /etc/ssh/sshd_config

# Restart SSH server
# sudo service ssh restart
sudo systemctl restart sshd

echo "Tasks completed successfully."
