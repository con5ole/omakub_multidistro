#Get distro
distro=$(./distrocheck.sh)
# Be fancy
source ~/.local/share/omakub/ascii.sh


# Needed for all installers
sudo apt update -y
sudo apt install -y curl git unzip


# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers

if [[ $distro == "Debian" ]] then
gum confirm "Run for Debian?" &&
# needed for add-apt-repository
sudo apt-get install software-properties-common
for script in ~/.local/share/omakub/install-Debian/*.sh; do source $script; done
fi
if [[ $distro == "Ubuntu" ]] then
gum confirm "Run for ubuntu?" &&
for script in ~/.local/share/omakub/install-Ubuntu/*.sh; do source $script; done
fi
if [[ $distro == "" ]] then
gum confirm "Run for unknown distro?" &&
for script in ~/.local/share/omakub/install/*.sh; do source $script; done
fi

# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 300

# Logout to pickup changes
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt
