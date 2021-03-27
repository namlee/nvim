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

  -- Autocomplete
  use 'hrsh7th/nvim-compe'

	-- Explorer
  use 'kyazdani42/nvim-tree.lua'
end)
