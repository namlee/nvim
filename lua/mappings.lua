vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- The only thing until now I hate abt Vim
-- fucking Esc
vim.api.nvim_set_keymap('i', '[q', '<ESC>', {noremap = true, silent = true})

-- Toggle hlsearch
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- Better window movement
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { silent = true })

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })


-- Move lines up/down
-- nmap
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
-- imap
vim.api.nvim_set_keymap('i', '<C-j>', '<ESC>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<ESC>:m .-2<CR>==gi', { noremap = true, silent = true })
-- vmap
vim.api.nvim_set_keymap('v', '<C-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

-- Resize window
vim.api.nvim_set_keymap('n', '<C-Up>',    ':resize -2<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>',  ':resize +2<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>',  ':vertical resize -2<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true})

-- Quick force quit
vim.api.nvim_set_keymap('n', '<C-q>', ':qa!<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>:qa!<CR>', { noremap = true, silent = true})
