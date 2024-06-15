
# Be fancy
source ~/.local/share/omakub/ascii.sh


# Needed for all installers
sudo apt update -y
sudo apt install -y curl git unzip

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install -y gum


# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers


sudo apt-get install -y build-essential software-properties-common libssl-dev libffi-dev libyaml-dev libzopfli-dev

gum confirm "Add original dhh omakub apps?" &&
for script in ~/.local/share/omakub/install-Debian/omakase/*.sh; do source $script; done

gum confirm "Add second opinion?" &&
for script in ~/.local/share/omakub/install-Debian/omakase2/*.sh; do source $script; done

gum confirm "Add webdev (ruby, node)?" &&
for script in ~/.local/share/omakub/install-Debian/webdev/*.sh; do source $script; done

gum confirm "Add dotnet 8?" &&
for script in ~/.local/share/omakub/install-Debian/dotnet/*.sh; do source $script; done


for script in ~/.local/share/omakub/install-Debian/*.sh; do source $script; done


# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 300

# Logout to pickup changes
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt
