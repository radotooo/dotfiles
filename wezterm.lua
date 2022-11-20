local wezterm = require 'wezterm'
local act = wezterm.action
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
return {
  font = wezterm.font 'JetBrains Mono',
  color_scheme = 'GitHub Dark',
  font_size = 14,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = true,
  use_fancy_tab_bar = false,
  -- window_decorations = "", -- this will disable i3wm decoration
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_frame = {
  -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    -- font = wezterm.font { family = 'Roboto', weight = 'Bold' },

    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 12,
    default_cursor_style = 'SteadyBar',
    -- The overall background color of the tab bar when
    -- the window is focused
    -- active_titlebar_bg = '#282A36',
    active_titlebar_bg = '#282A36',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#282A36',
  --   border_left_width = '0.5cell',
  --   border_right_width = '0.5cell',
  --   border_bottom_height = '0.25cell',
  --   border_top_height = '0.25cell',
  --   border_left_color = 'purple',
  --   border_right_color = 'purple',
  --   border_bottom_color = 'purple',
  --   border_top_color = 'purple',
  },
  colors = {
    tab_bar = {
      -- The color of the strip that goes along the top of the window
      -- (does not apply when fancy tab bar is in use)
      background = '#16171D',

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = '#282A36',
        -- The color of the text for the tab
        fg_color = '#c0c0c0',

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = 'Normal',

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = 'None',

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = '#1E1F28',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = '#1E1F28',
        fg_color = '#909090',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = '#1E1F28',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over the new tab button
      new_tab_hover = {
        bg_color = '#1E1F28',
        fg_color = '#909090',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab_hover`.
      },
    },
    -- The default background color
    background = '#282A36',
  },
  keys = {
    {
    -- CMD-y starts `top` in a new tab
      -- key = 'y',
      -- mods = 'CTRL|ALT',
      -- action = wezterm.action.SpawnCommandInNewTab {
      --   args = { 'ls' }, -- witch program to execute
      -- }
    -- },
        key = 'n',
        mods = 'CTRL|ALT',
        action = act.SpawnTab 'CurrentPaneDomain',
      },
      {
      key = '=',
      mods = 'CTRL|ALT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
  }
}

-- function set_tab_title(title)
--   -- The debug overlay defines a global `window` variable that is a Gui Window object; let's
--   -- access it via the special `_G` lua table that always references the global variables
--   local gui_window = _G.window
--   -- "Convert" the gui window into a mux window
--   local window = wezterm.mux.get_window(gui_window:window_id())
--   -- Locate the active tab
--   for _, tab_info in ipairs(window:tabs_with_info()) do
--     if tab_info.is_active then
--       -- Set the title and log something to indicate the changes that we made
--       tab_info.tab:set_title(title)
--       wezterm.log_info("Changed title for tab " .. tostring(tab_info.tab:tab_id()) .. " to " .. tab_info.tab:get_title())
--       break
--     end
--   end
-- end
