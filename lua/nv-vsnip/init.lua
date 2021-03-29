vim.api.nvim_set_keymap('i', '<C-l>', 'vsnip#jumpable(1) ? \'<Plug>(vsnip-jump-next)\' : \'<C-l>\'', {noremap = false, expr = true})
vim.api.nvim_set_keymap('s', '<C-h>', 'vsnip#jumpable(-1) ? \'<Plug>(vsnip-jump-prev)\' : \'<C-h>\'', {noremap = false, expr = true})

-- keymap
-- info: https://github.com/kristijanhusak/neovim-config/blob/bleeding-edge/nvim/lua/partials/completion.lua#L30

-- keymap('i', '<C-l>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<C-l>"', {
--   expr = true,
--   noremap = false
-- })
-- keymap('i', '<C-h>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<C-h>"', {
--   expr = true,
--   noremap = false
-- })