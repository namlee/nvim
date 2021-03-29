require('nvim_comment').setup({
  comment_empty = false, -- ignore empty line
})
-- <C-_> is <C-/>
-- more info here: https://stackoverflow.com/questions/9051837/how-to-map-c-to-toggle-comments-in-vim
--
-- Mac issue:
-- nvim comment doesn't map ctrl /
-- https://stackoverflow.com/questions/64073856/how-do-i-use-ctrl-as-a-shortcut-in-vim-using-map-c-doesnt-work
vim.api.nvim_set_keymap("n", "<C-_>", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "<C-_>", ":CommentToggle<CR>", {noremap=true, silent = true})