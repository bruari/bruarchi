# Install everything
for f in ~/.local/share/bruarchi/install/*.sh; do source "$f"; done

# Ensure locate is up to date now that everything has been installed
sudo updatedb

# source antidote & initialize plugins statically
zsh -c "source /usr/share/zsh-antidote/antidote.zsh;antidote load ~/.local/share/bruarchi/default/zsh/antidote_plugins.txt"

gum confirm "Reboot to apply all settings?" && reboot
