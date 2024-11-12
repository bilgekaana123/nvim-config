local M = {}

M.base_30 = {
  white = "#D9E0EE",
  darker_black = "#1f1f23",
  black = "#1E1D2D", -- nvim bg
  black2 = "#252434",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#6b6b77",
  grey_fg = "#4e4d5d",
  grey_fg2 = "#555464",
  light_grey = "#605f6f",
  red = "#F38BA8", -- Error highlights
  pink = "#F5C2E7",
  line = "#383747", -- for lines like vertsplit
  green = "#86ef9b", -- Constants and parameters
  blue = "#5de3ff", -- Strings
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#bab1ff", -- Functions, keywords
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#5de3ff", -- Links
  statusline_bg = "#2d2c3c",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#95b6c4",
  lavender = "#9394a1", -- Comments
}

M.base_16 = {
  base00 = "#2f2f37", -- 191919 secondary
  base01 = "#282737",
  base02 = "#4a485a",
  base03 = "#383747",
  base04 = "#414050",
  base05 = "#D9E0EE",
  base06 = "#CCD3E1",
  base07 = "#D9E0EE",
  base08 = "#BAB1FF", -- className, Key etc..
  base09 = "#F8BD96",
  base0A = "#FAE3B0",
  base0B = "#86EF9B", -- Constants
  base0C = "#5DE3FF", -- Links
  base0D = "#5DE3FF", -- Strings
  base0E = "#BAB1FF", -- Functions, keywords
  base0F = "white",
}

M.polish_hl = {

  treesitter = {
    ["@variable"] = { fg = M.base_30.green }, -- variables
    ["@tag"] = { fg = M.base_30.green }, -- variables
    ["@tag.builtin"] = { fg = M.base_30.blue }, -- variables
    ["@variable.member"] = { fg = M.base_30.white }, -- variables
    ["@function.method.call"] = { fg = M.base_30.purple },
    ["@function.call"] = { fg = M.base_30.purple },
    ["@property"] = { fg = M.base_30.green }, -- Properties
    ["@variable.builtin"] = { fg = M.base_30.purple }, -- Built-in variables
    ["@variable.parameter"] = { fg = M.base_30.green }, -- Built-in variables
    ["@function"] = { fg = M.base_30.purple }, -- Functions
    ["@keyword"] = { fg = M.base_30.purple }, -- Keywords
    ["@keyword.Import"] = { fg = M.base_30.purple }, -- Keywords Import
    ["@Includes"] = { fg = M.base_30.purple },
    ["@string"] = { fg = M.base_30.blue }, -- Strings
    ["@constant"] = { fg = M.base_30.green }, -- Constants
    ["@parameter"] = { fg = M.base_30.green }, -- Parameters
    ["@comment"] = { fg = M.base_30.lavender }, -- Comments
    ["@punctuation"] = { fg = "#b7b8c2" }, -- Punctuation
    ["@type"] = { fg = M.base_30.green }, -- Types
    ["@type.builtin"] = { fg = M.base_30.green }, -- Types
    ["@boolean"] = { fg = M.base_30.white }, -- Booleans
    ["@number"] = { fg = M.base_30.orange }, -- Numbers
    ["@operator"] = { fg = M.base_30.white }, -- Operators
    ["@constructor"] = { fg = M.base_30.cyan }, -- Constructors
    ["@method"] = { fg = M.base_30.purple }, -- Methods
    ["@namespace"] = { fg = M.base_30.yellow }, -- Namespaces
    ["@field"] = { fg = M.base_30.green }, -- Fields
    ["@label"] = { fg = M.base_30.yellow }, -- Labels
    ["@include"] = { fg = M.base_30.purple }, -- Includes
    ["@exception"] = { fg = M.base_30.red }, -- Exceptions
    ["@repeat"] = { fg = M.base_30.purple }, -- Loops (e.g., for, while)
    ["@conditional"] = { fg = M.base_30.purple }, -- Conditionals (e.g., if, else)
    ["@debug"] = { fg = M.base_30.red }, -- Debug statements
    ["@storageclass"] = { fg = M.base_30.teal }, -- Storage class (e.g., static, extern)
    ["@preproc"] = { fg = M.base_30.orange }, -- Preprocessor
    ["@constant.builtin"] = { fg = M.base_30.green }, -- Preprocessor
  },
}

M.type = "dark"


M = require("base46").override_theme(M, "clerk")

return M
