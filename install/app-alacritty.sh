sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
distro=$(~/.local/share/omakub/distrocheck.sh)
if [[ $distro == "Ubuntu" ]]
then
cp ~/.local/share/omakub/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ~/.local/share/omakub/configs/alacritty/theme.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/omakub/configs/alacritty/font.toml ~/.config/alacritty/font.toml
fi

if [[ $distro == "Debian" ]]
then
cp ~/.local/share/omakub/configs/alacritty.yml ~/.config/alacritty/alacritty.yml
fi

