vim.cmd [[packadd packer.nvim]]
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.bashls.setup{}
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
require("lsp_lines").setup()
vim.o.number = true
vim.o.relativenumber = true
vim.diagnostic.config({
         virtual_text = false,
      })
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
   use'https://github.com/vim-airline/vim-airline'
--   use({
  --"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  --config = function()
    --require("lsp_lines").setup()
  --end,
--})
   use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
   use 'sheerun/vim-polyglot'
   use 'simrat39/rust-tools.nvim'
   use 'scrooloose/NERDTree'
 end)


