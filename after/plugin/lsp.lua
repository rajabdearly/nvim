local lsp = require('lsp-zero').preset({})


lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
  'lua-language-server'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
