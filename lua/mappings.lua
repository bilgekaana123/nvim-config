require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here


-- Move line up with Alt+K
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move line down with Alt+J
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

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
