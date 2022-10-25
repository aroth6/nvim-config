vim.cmd [[packadd packer.nvim]]

require("config/cmp")
require("config/lang")
vim.o.number = true
vim.o.relativenumber = true
return require('packer').startup(function(use)
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'ryanoasis/vim-devicons'
	use 'wbthomason/packer.nvim'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use'https://github.com/vim-airline/vim-airline'
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  use 'sheerun/vim-polyglot'
  use 'simrat39/rust-tools.nvim'
  use 'scrooloose/NERDTree'
 end)

