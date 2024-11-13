-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 12
--
config.enable_tab_bar = false

config.window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
}
-- Window defaults size
config.initial_cols = 228
config.initial_rows = 60

config.color_scheme = "Catppuccin Macchiato"

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
