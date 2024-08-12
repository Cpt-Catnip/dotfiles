local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- theme {{
config.color_scheme = "AdventureTime"
config.font = wezterm.font("GohuFont uni14 Nerd Font Mono")
config.font_size = 16

config.window_decorations = "RESIZE"
-- }}

-- keymaps {{
config.keys = {
	-- jump left/right
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action.SendString("\x1bb"),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action.SendString("\x1bf"),
	},

	-- open config
	{
		key = ",",
		mods = "SUPER",
		action = wezterm.action.SpawnCommandInNewTab({
			-- cwd = wezterm.home_dir,
			args = { "nvim", wezterm.config_file },
		}),
	},

	-- move between panes
	{
		key = "J",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "K",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "H",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "L",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
}
-- }}

-- env variables {{
-- workaround for homebrew stuff
config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
}
-- }}

return config
