rm -rf .config/
mkdir .config/

# Alacritty
# cp -r ~/.config/alacritty .config
# rm .config/alacritty/install.log

# st
cp ~/git/st/config.h ./st_config.h
cp ~/git/dwm/config.h ./dwm_config.h
cp ~/git/dmenu/config.h ./dmenu_config.h

# Neovim
cp -r ~/.config/nvim .config
rm -rf .config/nvim/plugin
rm -rf .config/nvim/live-server
rm .config/nvim/.luarc.json

# i3
# cp -r ~/.config/i3 .config

# polybar
# cp -r ~/.config/polybar .config

# picom
# cp -r ~/.config/picom .config
