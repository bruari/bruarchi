# Copy over bruarchi configs
cp -R ~/.local/share/bruarchi/config/* ~/.config/

# Change default shell to zsh
sudo usermod -s /usr/bin/zsh $USER

# Copy over default zsh from bruarchi
cp ~/.local/share/bruarchi/default/zsh/zshrc ~/.zshrc

# Copy over default tmux.conf from bruarchi
cp ~/.local/share/bruarchi/default/tmux/tmux.conf ~/.tmux.conf

# Login directly as user, rely on disk encryption + hyprlock for security
#sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
#sudo tee /etc/systemd/system/getty@tty1.service.d/override.conf >/dev/null <<EOF
#[Service]
#ExecStart=
#ExecStart=-/usr/bin/agetty --autologin $USER --noclear %I \$TERM
#EOF

# Set common git aliases
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.ci commit
#git config --global alias.st status
#git config --global pull.rebase true
#git config --global init.defaultBranch master

# Set identification from install inputs
#if [[ -n "${BRUARCHI_USER_NAME//[[:space:]]/}" ]]; then
#  git config --global user.name "$BRUARCHI_USER_NAME"
#fi

#if [[ -n "${BRUARCHI_USER_EMAIL//[[:space:]]/}" ]]; then
#  git config --global user.email "$BRUARCHI_USER_EMAIL"
#fi

# Set default XCompose that is triggered with CapsLock
#tee ~/.XCompose >/dev/null <<EOF
#include "%H/.local/share/bruarchi/default/xcompose"

# Identification
#<Multi_key> <space> <n> : "$BRUARCHI_USER_NAME"
#<Multi_key> <space> <e> : "$BRUARCHI_USER_EMAIL"
#EOF
