local M = {}

M.base_30 = {
  white = "#E1E4E8",
  darker_black = "#1e1e20",
  black = "#1e222a", --  nvim bg
  black2 = "#252931",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#6a737d",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#f97583",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#31353d", -- for lines like vertsplit
  green = "#85e89d",
  vibrant_green = "#7eca9c",
  nord_blue = "#81A1C1",
  blue = "#79b8ff",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#b392f0",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#ffab70",
  cyan = "#a3b8ef",
  statusline_bg = "#22262e",
  lightbg = "#2d3139",
  pmenu_bg = "#61afef",
  folder_bg = "#b7b9bd",
}

M.base_16 = {
  base00 = "#2a2a2a",
  base01 = "#353b45",
  base02 = "#3e4451",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#F97583",
  base0E = "#c678dd",
  base0F = "#be5046",
}



M.polish_hl = {

  treesitter = {
    ["@function"] = { fg = M.base_30.purple },
    ["@function.call"] = { fg = M.base_30.purple },
    ["@function.method.call"] = { fg = M.base_30.purple },

    ["@punctuation.bracket"] = { fg = M.base_30.white },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
    ["@punctuation.special"] = { fg = M.base_30.white },
    ["@constructor"] = { fg = M.base_30.purple },

    ["@keyword"] = { fg = M.base_30.red },
    ["@keyword.import"] = { fg = M.base_30.red },
    ["@keyword.operator"] = { fg = M.base_30.red },

    ["@type"] = { fg = M.base_30.purple },
    ["@type.builtin"] = { fg = M.base_30.blue },

    ["@variable"] = { fg = M.base_30.white },
    ["@variable.member"] = { fg = M.base_30.orange },
    ["@variable.parameter"] = { fg = M.base_30.orange },

    ["@tag"] = { fg = M.base_30.blue },
    ["@tag.attribute"] = { fg = M.base_30.purple },
    ["@tag.builtin"] = { fg = M.base_30.green },
    ["@tag.delimiter"] = { fg = M.base_30.white },

    ["@string"] = { fg = M.base_30.blue },
    ["@operator"] = { fg = M.base_30.white },
    ["@none"] = { fg = M.base_30.white },
    ["@comment"] = { fg = M.base_30.grey },
    ["@boolean"] = { fg = M.base_30.blue },


    },
}

M.type = "dark"

M = require("base46").override_theme(M, "hono")

return M
