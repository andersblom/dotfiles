local function configure()
	local theme = require("alpha.themes.dashboard")
	local themeconfig = theme.config

	local dashboard = require("alpha.themes.dashboard")

	-- Set header
	dashboard.section.header.val = {
		"███╗   ██╗██╗   ██╗██╗███╗   ███╗",
		"████╗  ██║██║   ██║██║████╗ ████║",
		"██╔██╗ ██║██║   ██║██║██╔████╔██║",
		"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
		"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
		"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
	}

	dashboard.section.buttons.val = {
		dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
		dashboard.button("<SPC> s-f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
		dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
	}

	local fortune = require("alpha.fortune")
	dashboard.section.footer.val = fortune()

	return themeconfig
end

return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("alpha").setup(configure())
	end,
}
