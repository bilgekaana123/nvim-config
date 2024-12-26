local opt = vim.opt
local o = vim.o
local g = vim.g

o.signcolumn = "yes"
o.background = "dark"
o.termguicolors = true

--
-- -- Set cursor color to green
-- vim.cmd([[
--   highlight Cursor guifg=green guibg=green
-- ]])
--
-- -- Set cursor style
-- opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor'
--

o.relativenumber = true

o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number"


-- Enable line wrapping
o.wrap = true
o.breakindent = true
o.showbreak = "   "
o.linebreak = true

o.breakat= " "


o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true

-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true

-- Folding settings
--o.foldmethod = "indent"
o.foldcolumn = '1' -- Show fold column
o.foldlevel = 99   -- Set max fold level
o.foldlevelstart = 99 -- Start with all folds open
o.foldenable = true -- Enable folds
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]




-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

-- disable some default providers
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- add binaries installed by mason.nvim to path
local is_windows = vim.fn.has "win32" ~= 0
local sep = is_windows and "\\" or "/"
local delim = is_windows and ";" or ":"
vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH



