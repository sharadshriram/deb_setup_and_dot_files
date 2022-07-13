
# switch as sudo
sudo su


echo "Install: build-essentials, git, curl, python, python-venv, exa"
apt install -y --quiet --upgrade build-essentials exa python3 python3-dev python3-venv git curl

echo "Install: node, npm, fish (shell), neovim, tmux"
apt install -y --quiet --upgrade nodejs npm fish neovim tmux

echo "Install: emoji booster, gconf2"
apt install -y --quiet --upgrade ibus-typing-booster gconf2

echo "Install: nerd-fonts=JetBrainsMono"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d /usr/local/share/fonts
rm JetBrainsMono.zip
fc-cache -c -v

echo "Set: Terminal font to JetBrainsMono"
gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "JetBrainsMono Nerd Font 12"

echo "Install: fisher - plugin manager for fish"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher


echo "Fisher Install: jethrokuan/z"
fisher install jethrokuan/z






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
wget https://github.com/gohugoio/hugo/releases/download/v0.101.0/hugo_extended_0.101.0_Linux-64bit.deb

dpkg --install hugo_extended_0.101.0_Linux-64bit.deb

echo "Install gimp?"
apt install gimp

