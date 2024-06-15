echo "Installing git..."
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null

echo "Cloning secondopinion OMAKUB..."
git clone -b secondopinion https://github.com/con5ole/omakub_multidistro.git ~/.local/share/omakub > /dev/null

source ~/.local/share/omakub/install.sh
