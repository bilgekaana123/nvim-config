-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "ts_ls", "eslint","tailwindcss" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Setup Emmet LS
lspconfig.emmet_ls.setup({
  capabilities = nvlsp.capabilities,
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte" },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true, -- Enable BEM syntax
      },
    },
  },
  on_attach = function(client, bufnr)
    -- Additional key mappings for Emmet, if needed
    nvlsp.on_attach(client, bufnr)
  end,
})


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

vim.diagnostic.config({
  virtual_text = false,    -- Disable inline diagnostics text
  severity_sort = true,    -- Sort by severity
  float = {
    border = "rounded",
  },
  -- Use this section to suppress specific messages
  -- e.g., "unused variable" for Lua or other languages.
  severity = {
    min = vim.diagnostic.severity.WARN, -- Show only warnings and errors
  },
})

-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap(
  'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>', 
  { noremap = true, silent = true }
)
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<Leader>n', ':lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)
-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<Leader>p', ':lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)


vim.cmd [[
  highlight DiagnosticUnderlineError guisp=Red gui=undercurl
  highlight DiagnosticUnderlineWarn guisp=Orange gui=undercurl
  highlight DiagnosticUnderlineHint guisp=LightBlue gui=undercurl
  highlight DiagnosticUnderlineInfo guisp=Green gui=undercurl
]]
