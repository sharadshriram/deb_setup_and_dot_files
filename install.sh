
# switch as sudo
sudo su


# Install: build-essentials, git, curl, python, python-venv, exa
apt install -y --quiet --upgrade build-essentials exa python3 python3-venv git curl

# Install: node, npm, fish (shell), neovim, tmux
apt install -y --quiet --upgrade nodejs npm fish neovim tmux

# Install: emoji booster, gconf2
apt install -y --quiet --upgrade ibus-typing-booster gconf2

# Install: nerd-fonts=JetBrainsMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d /usr/local/share/fonts
rm JetBrainsMono.zip
fc-cache -c -v

# Set: Terminal font to JetBrainsMono
gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "JetBrainsMono Nerd Font 12"


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

