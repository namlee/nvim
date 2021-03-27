vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- The only thing until now I hate abt Vim
-- fucking <ESC>
vim.api.nvim_set_keymap('i', '[q', '<ESC>', {noremap = true, silent = true})

-- Toggle hlsearch
vim.api.nvim_set_keymap('n', '<Leader>hls', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- Quick force quit
vim.api.nvim_set_keymap('n', '<C-q>', ':qa!<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:qa!<CR>', { noremap = true, silent = true})
