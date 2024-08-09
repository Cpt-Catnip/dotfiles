local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- theme {{
config.color_scheme = "AdventureTime"
config.font = wezterm.font("GohuFont 14 Nerd Font Mono")
config.font_size = 14
-- }}

return config
