rm -rf .config/
mkdir .config/

# Alacritty
cp -r ~/.config/alacritty .config/

# Neovim
cp -r ~/.config/nvim .config/
rm -rf .config/nvim/plugin/
rm -rf .config/nvim/live-server/

# i3
cp -r ~/.config/i3 .config

# polybar
cp -r ~/.config/polybar .config/

# Picom
cp -r ~/.config/picom .config
