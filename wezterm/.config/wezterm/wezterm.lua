-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- FONT
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

-- UI
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- COLOR SHCEME
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.window_background_image = "/Users/seiffzz/.config/wallpapers/bg-blurred-darker.png"

return config
