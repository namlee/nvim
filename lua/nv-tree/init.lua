-- Mappings
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- This config makes NvimTree slow
-- vim.api.nvim_set_keymap('n', '<leader>er', ':NvimTreeRefresh<CR>>', {noremap = true, silent = true})



-- Settings
vim.g.nvim_tree_side = 'right'
-- Closes the tree when it's the last window
vim.g.nvim_tree_auto_close = 1
-- Don't auto open tree on specific filetypes.
vim.g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'}
-- Closes the tree when you open a file
vim.g.nvim_tree_quit_on_open = 1