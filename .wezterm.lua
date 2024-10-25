-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
	'Iosevka',
	'Symbols Nerd Font Mono',
}
config.font_rules =
{
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font_with_fallback
		{
			'Iosevka',
			'Symbols Nerd Font Mono',
		},
	},
}

config.window_background_image = "./1-filter.jpg"
config.font_size = 18

config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.8
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Oxocarbon Dark (Gogh)'
config.color_scheme = 'Gruvbox dark, hard (base16)'
--config.color_scheme = 'Gruvbox Dark (Gogh)'
--config.color_scheme = 'Gruvbox Material (Gogh)'
-- and finally, return the configuration to wezterm
return config
