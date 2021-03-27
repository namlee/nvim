-- Auto re-compile & sync Packer whenever a change occur in `plugins.lua` file
autocmd BufWritePost plugins.lua PackerCompile
require('plugins')