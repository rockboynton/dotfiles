email="rock.boynton@yahoo.com"
# TODO read username and email from input instead

sudo apt update
sudo apt upgrade -y

# install all the things
# sudo apt install

# generate ssh key
ssh-keygen -t ed25519 -C "$email" -f "$HOME"/.ssh/id_ed25519 -q -P

# install Starship shell
curl -sS https://starship.rs/install.sh | sh

# configure
mkdir ~/.config
cp starship.toml ~/.config/

