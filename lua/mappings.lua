require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here

map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- Move line down with Ctrl+J
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
-- Move line up with Ctrl+k
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Keyboard users
map("n", "<C-t>", function()
  require("menu").open("default")
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})


 -- Added After For me 
map('n', '<leader>fg', function()
  require('telescope.builtin').git_files({
    hidden = true,
    search_dirs = { '.' },
    additional_args = function()
      return { '--glob', '!.git', '--glob', '!node_modules/*' }  -- Exclude node_modules
    end,
  })
end, { desc = 'Find Git Files' })

map("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll up and center" })

map("n", "<C-p>", '"0p', { noremap = true, silent = true, desc = "Paste from yank register" })
