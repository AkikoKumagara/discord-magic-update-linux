cd ~/Downloads
wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"
sudo tar --overwrite -xvzf discord.tar.gz -C /opt
sudo ln -sf /opt/Discord/Discord /usr/bin/Discord
sudo sed -i 's/Exec=\/usr\/share\/discord\/Discord/Exec=\/usr\/bin\/Discord/g' /opt/Discord/discord.desktop
sudo sed -i 's/Icon=discord/Icon=\/opt\/Discord\/discord.png/g' /opt/Discord/discord.desktop
sudo cp -r /opt/Discord/discord.desktop /usr/share/applications
sudo rm -rf ~/Downloads/discord.tar.gz
