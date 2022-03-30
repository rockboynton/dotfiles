# TODO create SSH key follow https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

sudo apt update

# install Starship shell
curl -sS https://starship.rs/install.sh | sh

# configure
mkdir ~/.config
cp starship.toml ~/.config/

