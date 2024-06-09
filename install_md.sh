echo "Installing git..."
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null

echo "Cloning stable OMAKUB..."
git clone -b stable git@github.com:con5ole/omakub_multidistro.git ~/.local/share/omakub > /dev/null

source ~/.local/share/omakub/install.sh