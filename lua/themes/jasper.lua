local M = {}

M.base_30 = {
  white = "#d8dee9",          -- Softer white for variables
  blue = "#88B8F6",           -- Vibrant blue for keywords
  teal = "#89ddff",           -- Teal for function names
  green = "#98c379",          -- Strings remain green
  orange = "#E5A07B",         -- Optional, for literals or parameters
  grey = "#5c6370",
  darker_black = "#181a20",
  black = "#1c1f26", -- nvim bg
  black2 = "#242830",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#3a3f4b",
  grey_fg = "#666a72",
  grey_fg2 = "#73787f",
  light_grey = "#7d828a",
  red = "#f28b93",
  baby_pink = "#ec8ca2",
  pink = "#ff7aa2",
  line = "#2d3139", -- for lines like vertsplit
  vibrant_green = "#89d39a",
  nord_blue = "#88c0d0",
  yellow = "#ffd38e",
  sun = "#e6b580",
  purple = "#c3a4f8",
  dark_purple = "#a78cd9",
  cyan = "#9ae6f7",
  statusline_bg = "#20242c",
  lightbg = "#2c3038",
  pmenu_bg = "#61afef",
  folder_bg = "#c1c3c9",
}

M.base_16 = {
  base00 = "#151820",  -- 1a1a1a, adjusted for more contrast - 151820
  base01 = "#292d36",
  base02 = "#353b45",
  base03 = "#3e4451",
  base04 = "#545862",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#43698D",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#79aefc",
  base0E = "#b78df0",
  base0F = "#be5046",
}

M.polish_hl = {
  CursorLine = { bg = M.base_30.black },

  treesitter = {
    ["@function"] = { fg = M.base_30.yellow },
    ["@function.call"] = { fg = M.base_30.yellow },
    ["@function.tsx"] = { fg = M.base_30.yellow },
    ["@function.method.call"] = { fg = M.base_30.yellow },

    ["@punctuation.bracket"] = { fg = M.base_30.white },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
    ["@punctuation.special"] = { fg = M.base_30.white },
    ["@constructor"] = { fg = M.base_30.blue },

    ["@keyword"] = { fg = M.base_30.purple },
    ["@keyword.function.tsx"] = { fg = M.base_30.purple },
    ["@keyword.return.tsx"] = { fg = M.base_30.yellow },
    ["@keyword.import.tsx"] = { fg = M.base_30.purple },
    ["@keyword.import.typescript"] = { fg = M.base_30.purple },
    ["@keyword.operator"] = { fg = M.base_30.purple },

    ["@type"] = { fg = M.base_30.blue },
    ["@type.tsx"] = { fg = M.base_30.blue },
    ["@type.builtin"] = { fg = M.base_30.blue },
    ["@type.builtin.tsx"] = { fg = M.base_30.blue },

    ["@variable"] = { fg = M.base_30.white },
    ["@variable.tsx"] = { fg = M.base_30.white },
    ["@variable.member"] = { fg = M.base_30.blue },
    ["@variable.builtin"] = { fg = M.base_30.purple },
    ["@variable.parameter"] = { fg = M.base_30.yellow },
    ["@variable.parameter.tsx"] = { fg = M.base_30.red },

    ["@tag"] = { fg = M.base_30.blue },
    ["@tag.attribute"] = { fg = M.base_30.blue },
    ["@tag.attribute.tsx"] = { fg = M.base_30.blue },
    ["@tag.builtin.tsx"] = { fg = M.base_30.red },
    ["@tag.delimiter"] = { fg = M.base_30.white },

    ["@string"] = { fg = M.base_30.green },
    ["@operator"] = { fg = M.base_30.white },
    ["@none"] = { fg = M.base_30.white },
    ["@comment"] = { fg = M.base_30.grey },
    ["@boolean"] = { fg = M.base_30.blue },

    ["@markup.heading"] = { fg = M.base_30.white },
    ["@constant"] = { fg = M.base_30.teal },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "jasper")

return M
