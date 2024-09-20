local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font('BlexMono Nerd Font', { weight = "Medium" })
config.font_size = 12
config.color_scheme = "citruszest"
config.enable_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.adjust_window_size_when_changing_font_size = false
config.enable_scroll_bar = false
config.window_padding = {
  top = "1.5cell",
}

return config
