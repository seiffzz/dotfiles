-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- TERM
config.term = "wezterm"

-- FONT
config.font = wezterm.font("DankMono Nerd Font")
config.font_size = 16

-- UI
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

-- COLOR SHCEME
-- config.color_scheme = "rose-pine"
config.colors = require("themes/cyberdream")

return config
