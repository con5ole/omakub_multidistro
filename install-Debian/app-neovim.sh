distro=$(~/.local/share/omakub/distrocheck.sh)
if [[ $distro == "Ubuntu" ]]
then
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update
fi
sudo apt install -y neovim

	if [[ $distro == "Ubuntu" ]]
	then
	if [ ! -d "$HOME/.config/nvim" ];
	then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	distro=$(~/.local/share/omakub/distrocheck.sh)
		cp ~/.local/share/omakub/themes/neovim/tokyo-night.lua ~/.config/nvim/lua/plugins/theme.lua
	fi
fi
