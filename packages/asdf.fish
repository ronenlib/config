# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
printf "source ~/.asdf/asdf.fish\n" >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Node
brew install gpg
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

