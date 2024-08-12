local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- theme {{
config.color_scheme = "AdventureTime"
config.font = wezterm.font("GohuFont uni14 Nerd Font Mono")
config.font_size = 16
-- }}

return config
