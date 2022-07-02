
# switch as sudo
sudo su


# Install: build-essentials, git, curl, python, python-venv, exa
apt install -y --quiet --upgrade build-essentials exa python3 python3-venv git curl

# Install: node, npm, fish (shell), neovim, tmux
apt install -y --quiet --upgrade nodejs npm fish neovim tmux

# Install: emoji booster
apt install -y --quiet --upgrade ibus-typing-booster

# Install: nerd-fonts=Hack


echo "Install: git commitzen"
npm install -g commitizen




echo "installing  fisher - plugin manager for fish"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher








echo "Removing unwanted gnome apps"

echo "Generating SSH keys for github"

echo "Removing libreoffice suite, thunderbird and language packs"

echo "Customize terminal -- prompt, colors and shell"

echo "Fetch and overwride apps with custom configurations"

echo "Set fish as the default shell"

echo "Cleaning up"
apt autoremove
apt autoclean
apt clean

echo "Complete.\n"
echo "Other software installed"
echo "Obsidian - https://obsidian.md/download"
echo "Hugo (extended) - https://github.com/gohugoio/hugo/releases"
echo "Install gimp?"
apt install gimp
@sharadshriram

