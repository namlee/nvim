require('plugins')
require('settings')
require('mappings')
require('nv-lsp')
require('nv-compe')
require('nv-lspkind')
require('nv-lightbulb')
require('nv-telescope')
-- TODO: 
-- + config lspkind
-- + config lightbulb
--require('nv-onebuddy')

-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')