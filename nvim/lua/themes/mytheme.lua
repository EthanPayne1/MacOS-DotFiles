-- filepath: /home/ethan/.config/nvim/lua/custom/themes/mytheme.lua
-- Custom theme based on monochrome with modifications from chadrc.lua

local M = {}

-- Apply overrides from chadrc.lua to the base_30 table
M.base_30 = {
  white = "#D8DEE9",
  darker_black = "#000000", -- Changed from #1a1a1a
  black = "#000000", -- Changed from #101010 --  nvim bg
  black2 = "#202020",
  one_bg = "#242424",
  one_bg2 = "#2e2e2e",
  one_bg3 = "#383838",
  grey = "#424242",
  grey_fg = "#4c4c4c",
  grey_fg2 = "#606060",
  light_grey = "#677777",
  red = "#a5c6e1", -- Changed from #ec8989
  baby_pink = "#c7c7c7", -- Changed from #eca8a8
  pink = "#6484a4", -- Changed from #da838b
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#c9d36a",
  vibrant_green = "#7797b7", -- Changed from #eff6ab
  blue = "#8abae1",
  nord_blue = "#a5c6e1",
  yellow = "#7797b7", -- Changed from #ffe6b5
  sun = "#db9fe9", -- Changed from #eff6ab
  purple = "#e1bee9",
  dark_purple = "#db9fe9",
  teal = "#6484a4",
  orange = "#efb6a0",
  cyan = "#9aafe6", -- Changed from #9aafe6
  statusline_bg = "#1e1e1e",
  lightbg = "#2e2e2e",
  pmenu_bg = "#859ba2",
  folder_bg = "#7797b7",
}

-- Apply overrides from chadrc.lua to the base_16 table
M.base_16 = {
  base00 = "#000000", -- Changed from #101010
  base01 = "#1f1f1f",
  base02 = "#2e2e2e",
  base03 = "#383838",
  base04 = "#424242",
  base05 = "#bfc5d0",
  base06 = "#c7cdd8",
  base07 = "#ced4df",
  base08 = "#7b9198", -- Changed from #eee8d5
  base09 = "#B8B7B1",
  base0A = "#859ba2",
  base0B = "#7b9198",
  base0C = "#DFDFDA",
  base0D = "#ced4df",
  base0E = "#c7c7c7", -- Changed from #DAD4C3
  base0F = "#ced4df",
}

-- Add hl_override rules from chadrc.lua
M.polish_hl = {
  defaults = {
    Comment = { italic = true },
  },
  treesitter = {
    ["@comment"] = { italic = true },
    ["@punctuation.bracket"] = { fg = "#c7c7c7" }, -- Use the overridden red color
  },
}

M.type = "dark"

-- Override with the new theme name 'mytheme'
M = require("base46").override_theme(M, "monochrome")

return M
