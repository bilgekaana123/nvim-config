local M = {}

M.base_30 = {
  white = "#F0F4FC",  -- Brightened white for higher contrast
  darker_black = "#16161A",  -- Darker background
  black = "#2a2a2a",  -- nvim bg
  black2 = "#1E1E28",
  one_bg = "#262631",  -- Slightly darker bg for contrast
  one_bg2 = "#2E2E3A",
  one_bg3 = "#373744",
  grey = "#7A7A85",  -- Slightly lighter for better readability
  grey_fg = "#5A5A68",
  grey_fg2 = "#616170",
  light_grey = "#6B6B7B",
  red = "#FF6E8A",  -- Vibrant red for errors
  pink = "#FFB0D7",
  line = "#2F2F3B",  -- Darkened for better focus
  green = "#ADDB67",  -- Brighter green for constants
  blue = "#82AAFF",  -- Brighter blue for strings
  yellow = "#FFDF91",
  sun = "#FFEBB2",
  purple = "#D2B1FF",  -- More vibrant purple for keywords
  dark_purple = "#B78DDE",
  teal = "#7FDBCA",
  orange = "#FFCB8B",
  cyan = "#7DDCFF",  -- Match blue for links
  statusline_bg = "#262631",
  lightbg = "#2C2C38",
  pmenu_bg = "#7DDCFF",
  folder_bg = "#A5C8DA",
  lavender = "#B0B1BF",  -- Lighter lavender for comments
}

M.base_16 = {
  base00 = "#191e24",  -- Primary dark background
  base01 = "#23232D",
  base02 = "#4E4E5F",
  base03 = "#393949",
  base04 = "#484859",
  base05 = "#F0F4FC",
  base06 = "#E3E9F3",
  base07 = "#F0F4FC",
  base08 = "#D2B1FF",  -- Class names, keywords
  base09 = "#FFB77E",
  base0A = "#66667A",
  base0B = "#A7F3BF",  -- Constants
  base0C = "#7DDCFF",  -- Links
  base0D = "#7DDCFF",  -- Strings
  base0E = "#D2B1FF",  -- Functions, keywords
  base0F = "#FFFFFF",
}

M.polish_hl = {

  treesitter = {
    ["@variable"] = { fg = M.base_30.teal },  -- Variables
    ["@variable.member"] = { fg = M.base_30.white },  -- Variables
    ["@variable.parameter"] = { fg = M.base_30.teal },  -- Parameters
    ["@variable.parameter.tsx"] = { fg = M.base_30.teal },  -- Parameters
    ["@variable.builtin"] = { fg = M.base_30.blue },  -- Built-in variables
    ["@tag"] = { fg = M.base_30.orange },  -- Variables
    ["@tag.builtin"] = { fg = M.base_30.blue },  -- Variables
    ["@function.method.call"] = { fg = M.base_30.blue },
    ["@function"] = { fg = M.base_30.blue },  -- Functions
    ["@function.call"] = { fg = M.base_30.blue },
    ["@function.call.tsx"] = { fg = M.base_30.blue },
    ["@property"] = { fg = M.base_30.green },  -- Properties
    ["@keyword"] = { fg = M.base_30.teal },  -- Keywords
    ["@keyword.tsx"] = { fg = M.base_30.teal },  -- Keywords
    ["@keyword.return"] = { fg = M.base_30.teal },  -- Keywords
    ["@keyword.function"] = { fg = M.base_30.teal },  -- Keywords
    ["@keyword.import"] = { fg = M.base_30.teal },  -- Keywords Import
    ["@keyword.import.tsx"] = { fg = M.base_30.teal },  -- Keywords Import
    ["@keyword.import.typescript"] = { fg = M.base_30.teal },  -- Keywords Import
    ["@Includes"] = { fg = M.base_30.purple },
    ["@string"] = { fg = M.base_30.green },  -- Strings
    ["@constant"] = { fg = M.base_30.green },  -- Constants
    ["@parameter"] = { fg = M.base_30.green },  -- Parameters
    ["@comment"] = { fg = M.base_30.grey_fg },  -- Comments
    ["@punctuation"] = { fg = "#C5C5D4" },  -- Punctuation
    ["@type"] = { fg = M.base_30.blue },  -- Types
    ["@type.tsx"] = { fg = M.base_30.blue },  -- Types
    ["@type.typescript"] = { fg = M.base_30.orange },  -- Types
    ["@type.builtin.tsx"] = { fg = M.base_30.orange },  -- Types
    ["@type.builtin.typescript"] = { fg = M.base_30.orange },  -- Types
    ["@boolean"] = { fg = M.base_30.white },  -- Booleans
    ["@number"] = { fg = M.base_30.orange },  -- Numbers
    ["@operator"] = { fg = M.base_30.white },  -- Operators
    ["@constructor"] = { fg = M.base_30.purple },  -- Constructors
    ["@method"] = { fg = M.base_30.purple },  -- Methods
    ["@namespace"] = { fg = M.base_30.yellow },  -- Namespaces
    ["@field"] = { fg = M.base_30.green },  -- Fields
    ["@label"] = { fg = M.base_30.yellow },  -- Labels
    ["@include"] = { fg = M.base_30.purple },  -- Includes
    ["@exception"] = { fg = M.base_30.red },  -- Exceptions
    ["@repeat"] = { fg = M.base_30.purple },  -- Loops
    ["@conditional"] = { fg = M.base_30.purple },  -- Conditionals
    ["@debug"] = { fg = M.base_30.red },  -- Debug statements
    ["@storageclass"] = { fg = M.base_30.teal },  -- Storage class
    ["@preproc"] = { fg = M.base_30.orange },  -- Preprocessor
    ["@constant.builtin"] = { fg = M.base_30.green },
    ["@markup.heading"] = { fg = M.base_30.white },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "vimhero")

return M
