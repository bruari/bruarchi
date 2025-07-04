# Use dark mode for QT apps too (like VLC and kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/bruarchi/themes
for f in ~/.local/share/bruarchi/themes/*; do ln -s "$f" ~/.config/bruarchi/themes/; done

# Set initial theme
mkdir -p ~/.config/bruarchi/current
ln -snf ~/.config/bruarchi/themes/tokyo-night ~/.config/bruarchi/current/theme
source ~/.local/share/bruarchi/themes/tokyo-night/backgrounds.sh
ln -snf ~/.config/bruarchi/backgrounds/tokyo-night ~/.config/bruarchi/current/backgrounds
ln -snf ~/.config/bruarchi/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/bruarchi/current/background

# Set specific app links for current theme
ln -snf ~/.config/bruarchi/current/theme/hyprlock.conf ~/.config/hypr/hyprlock.conf
ln -snf ~/.config/bruarchi/current/theme/wofi.css ~/.config/wofi/style.css
ln -snf ~/.config/bruarchi/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/bruarchi/current/theme/btop.theme ~/.config/btop/themes/current.theme
mkdir -p ~/.config/mako
ln -snf ~/.config/bruarchi/current/theme/mako.ini ~/.config/mako/config
