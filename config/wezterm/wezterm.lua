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

return config
