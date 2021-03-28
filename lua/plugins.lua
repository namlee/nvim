local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use { 'wbthomason/packer.nvim', opt = true }

  -- Lsp
  use 'kabouzeid/nvim-lspinstall'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'p00f/nvim-ts-rainbow'  
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  -- TODO: fork this plugin and rewrite in lua
  use 'tpope/vim-commentary' -- use conjunction with nvim-ts-context-commentstring

  -- Color
  use 'sainnhe/sonokai'

	-- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
end)
