# TODO create SSH key follow https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

email="rock.boynton@yahoo.com"

sudo apt update
sudo apt upgrade -y

# generate ssh key
ssh-keygen -t ed25519 -C "$email" -f "$HOME"/.ssh/id_ed25519 -q -P

# install Starship shell
curl -sS https://starship.rs/install.sh | sh

# configure
mkdir ~/.config
cp starship.toml ~/.config/

