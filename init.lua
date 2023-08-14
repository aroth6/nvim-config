vim.cmd [[packadd packer.nvim]] 
 vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]]) 
 vim.cmd('set mouse=') 
 vim.cmd('set termguicolors') 
 vim.cmd('set colorcolumn=80') 
 --extra config 
 require("config/buffer") 
 require("config/cmp") 
 require("config/lang") 
 require("config/color") 
 require("config/lualine") 
  
 --vim commands 
 vim.api.nvim_set_hl(0,"Pmenu", {guibg=None, guifg=white}) 
 vim.cmd('highlight Pmenu guibg=None guifg=white') 
 vim.o.number = true 
 vim.o.relativenumber = true 
 vim.o.expandtab = true 
 vim.o.tabstop=4 
 vim.o.shiftwidth=4 
  
 return require('packer').startup(function(use) 
   use 'neovim/nvim-lspconfig' 
   use 'hrsh7th/cmp-nvim-lsp' 
    use 'famiu/bufdelete.nvim' 
    use 'hrsh7th/cmp-buffer' 
   use 'hrsh7th/cmp-path' 
   use 'hrsh7th/cmp-cmdline' 
   use 'hrsh7th/nvim-cmp' 
   use {'akinsho/bufferline.nvim', tag = "v3.*"} 
   use 'lervag/vimtex' 
   use "lukas-reineke/indent-blankline.nvim" 
   use 'onsails/lspkind.nvim' 
   use 'wbthomason/packer.nvim' 
   use 'nvim-tree/nvim-web-devicons' 
   use 'nvim-treesitter/nvim-treesitter' 
   use 'hrsh7th/vim-vsnip' 
   use 'hrsh7th/vim-vsnip-integ' 
   use 'NvChad/nvim-colorizer.lua' 
   use 'lewis6991/gitsigns.nvim' 
   use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim' 
   use 'nvim-lualine/lualine.nvim' 
   use 'sheerun/vim-polyglot' 
   use 'simrat39/rust-tools.nvim' 
   use 'nvim-neo-tree/neo-tree.nvim' 
   use 'nvim-lua/plenary.nvim' 
   use 'MunifTanjim/nui.nvim' 
   use 'nvim-neorg/neorg' 
   use 'andweeb/presence.nvim' 
   use 'catppuccin/nvim' 
  end)