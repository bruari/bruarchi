ascii_art='888                                                888      d8b 
888                                                888      Y8P 
888                                                888          
88888b.  888d888 888  888  8888b.  888d888 .d8888b 88888b.  888 
888 "88b 888P"   888  888     "88b 888P"  d88P"    888 "88b 888 
888  888 888     888  888 .d888888 888    888      888  888 888 
888 d88P 888     Y88b 888 888  888 888    Y88b.    888  888 888 
88888P"  888      "Y88888 "Y888888 888     "Y8888P 888  888 888 '
echo -e "\n$ascii_art\n"
echo -e "\nInstallation starting..."

# Prevent sudo from requiring the user password - Now and post install.
echo '%wheel ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers.d/nopasswd_wheel_group
sudo chmod 440 /etc/sudoers.d/nopasswd_wheel_group

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning bruarchi..."
rm -rf ~/.local/share/bruarchi/
git clone https://github.com/bruari/bruarchi.git ~/.local/share/bruarchi >/dev/null

source ~/.local/share/bruarchi/install.sh
