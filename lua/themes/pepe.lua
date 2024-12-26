local M = {}

M.base_30 = {
  white = "#ced4df",
  darker_black = "#05080e",
  black = "#0B0E14", --  nvim bg
  black2 = "#14171d",
  one_bg = "#1c1f25",
  one_bg2 = "#24272d",
  one_bg3 = "#2b2e34",
  grey = "#33363c",
  grey_fg = "#3d4046",
  grey_fg2 = "#46494f",
  light_grey = "#54575d",
  red = "#FF7B72",
  baby_pink = "#ff949b",
  pink = "#ff8087",
  line = "#24272d", -- for lines like vertsplit
  green = "#7EE787",
  vibrant_green = "#b9e75b",
  blue = "#A5D6FF",
  nord_blue = "#43b0e6",
  yellow = "#E7C547",
  sun = "#f0df8a",
  purple = "#D2A8FF",
  dark_purple = "#A37ACC",
  teal = "#74c5aa",
  orange = "#FFC66D",
  cyan = "#95E6CB",
  statusline_bg = "#12151b",
  lightbg = "#24272d",
  pmenu_bg = "#ff9445",
  folder_bg = "#98a3af",
}

M.base_16 = {
  base00 = "#0D1117",
  base01 = "#1c1f25",
  base02 = "#24272d",
  base03 = "#2b2e34",
  base04 = "#33363c",
  base05 = "#c9c7be",
  base06 = "#E6E1CF",
  base07 = "#D9D7CE",
  base08 = "#c9c7be",
  base09 = "#FFEE99",
  base0A = "#5A8BBE",
  base0B = "#AAD84C",
  base0C = "#FFB454",
  base0D = "#F07174",
  base0E = "#FFB454",
  base0F = "#CBA6F7",
}

M.polish_hl = {
  treesitter = {
    luaTSField = { fg = M.base_16.base0D },
    ["@tag.delimiter"] = { fg = M.base_30.cyan },
    ["@constructor"] = { fg = M.base_16.base0A },
    ["@string"] = { fg = M.base_30.blue},
    ["@variable.parameter.typescript"] = { fg = M.base_30.orange},
    ["@variable.parameter"] = { fg = M.base_30.orange},
    ["@type.builtin.typescript"] = { fg = M.base_30.blue},
    ["@tag.builtin"] = { fg = M.base_30.green},
    ["@tag.attribute"] = { fg = M.base_30.blue},
    ["@function"] = { fg = M.base_30.purple},
    ["@function.call.tsx"] = { fg = M.base_30.orange},
    ["@function.method.call"] = { fg = M.base_30.purple},
    ["@punctuation.bracket"] = { fg = M.base_30.white},
    ["@punctuation.delimiter"] = { fg = M.base_30.white},
    ["@keyword.return"] = { fg = M.base_30.red},
    ["@keyword.function"] = { fg = M.base_30.red},
    ["@keyword"] = { fg = M.base_30.red},
    ["@keyword.conditional"] = { fg = M.base_30.red},
    ["@type.builtin.tsx"] = { fg = M.base_30.blue},


  },
}

M = require("base46").override_theme(M, "pepe")

M.type = "dark"

return M
