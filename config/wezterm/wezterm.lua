local ui = require("ui")
local hooks = require("hooks")
local config = {}

for _, value in pairs({ ui, hooks }) do
	value.setup(config)
end

config.term = "wezterm"

return config
