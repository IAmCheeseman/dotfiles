rm -rf .config/
mkdir .config/

# Alacritty
cp -r ~/.config/alacritty .config
rm .config/alacritty/install.log

# Neovim
cp -r ~/.config/nvim .config
rm -rf .config/nvim/plugin
rm -rf .config/nvim/live-server
rm .config/nvim/.luarc.json

# i3
cp -r ~/.config/i3 .config

# polybar
cp -r ~/.config/polybar .config

# picom
cp -r ~/.config/picom .config
