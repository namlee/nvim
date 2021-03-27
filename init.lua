-- Auto re-compile & sync Packer whenever a change occur in `plugins.lua` file
vim.api.nvim_command('autocmd BufWritePost plugins.lua PackerCompile')
require('plugins')
require('mappings')
require('settings')

-- Plugins
require('nv-tree')
require('nv-lsp')