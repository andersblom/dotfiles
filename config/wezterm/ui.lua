local wezterm = require("wezterm")
local M = {}

function M.setup(config)
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
end
return M
