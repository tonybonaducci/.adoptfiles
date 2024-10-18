-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono") 
config.font_size = 18

config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.9
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Oxocarbon Dark (Gogh)'
config.color_scheme = 'Gruvbox dark, hard (base16)'
--config.color_scheme = 'Gruvbox Dark (Gogh)'

-- and finally, return the configuration to wezterm
return config
