local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.enable_tab_bar = false
config.initial_cols = 228
config.initial_rows = 60

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 12
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.color_scheme = "Catppuccin Macchiato"
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"

return config
