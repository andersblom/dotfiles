local wezterm = require("wezterm")

local M = {}

function M.setup(_)
	wezterm.on("gui-startup", function(cmd)
		local active_screen = wezterm.gui.screens()["active"]
		local _, _, window = wezterm.mux.spawn_window(cmd or {})

		local padding = 32
		local menu_bar_height = 25
		local laptop_menu_bar_height = 38
		local monitor_ratio = 21 / 9
		local current_ratio = active_screen.width / active_screen.height

		if current_ratio >= monitor_ratio then
			window:gui_window():set_position(active_screen.width / 4 + padding, padding + menu_bar_height)
			window:gui_window():set_inner_size(
				(active_screen.width - (padding * 4)) / 2,
				active_screen.height - (padding * 2) - menu_bar_height
			)
		else
			window:gui_window():set_position(padding * 2, padding * 2 + laptop_menu_bar_height * 2)
			window:gui_window():set_inner_size(
				(active_screen.width - padding * 4),
				active_screen.height - (padding * 2) - laptop_menu_bar_height
			)
		end
	end)
end

return M
