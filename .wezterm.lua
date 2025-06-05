local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Ayu Dark (Gogh)'
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.font_size = 14.0

-- config.window_decorations = "NONE"
config.enable_tab_bar = true

config.default_prog = {'wsl', '-e', 'tmux', 'new', '-A', '-s', 'wezterm'}

return config    
