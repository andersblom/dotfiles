local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Theme specification
config.color_scheme = "tokyonight_night"

-- Font specification
config.font = wezterm.font("Hack Nerd Font Mono", {
	weight = "Regular",
})
config.font_size = 16.0
config.line_height = 1.1

-- Functionality specification
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Window specification
config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 8,
}

return config
