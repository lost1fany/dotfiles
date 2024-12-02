local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	enable_tab_bar = false,
	initial_cols = 228,
	initial_rows = 60,

	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 12,

	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},
	window_background_opacity = 0.8,
	macos_window_background_blur = 10,
	color_scheme = "Catppuccin Macchiato",
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	window_frame = {
		active_titlebar_bg = "#1f1f1f",
		inactive_titlebar_bg = "#1f1f1f",
	},
}

return config
