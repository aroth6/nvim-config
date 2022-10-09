vim.cmd [[packadd packer.nvim]]
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.bashls.setup{}

require("lsp_lines").setup()
vim.o.number = true
vim.o.relativenumber = true
vim.diagnostic.config({
         virtual_text = false,
      })
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
   use'https://github.com/vim-airline/vim-airline'
   use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
})
   use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
   use 'sheerun/vim-polyglot'
  
   use 'scrooloose/NERDTree'
 end)


