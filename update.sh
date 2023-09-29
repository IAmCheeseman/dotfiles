rm -rf .config/
mkdir .config/

# Alacritty
cp -r ~/.config/alacritty ./.config/

# Neovim
cp -r ~/.config/nvim ./.config/
rm -rf ./.config/nvim/plugin/

# i3
cp -r ~/.config/i3 ./.config

# tmux
cp -r ~/.config/tmux ./.config/
rm -rf ./.config/tmux/plugins/

# polybar

cp -r ~/.config/polybar ./.config/
