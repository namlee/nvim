vim.o.termguicolors = true -- set term giu colors most terminals support this
-- life saver. Get rid of fucking "E37: No write since last change (add ! to override)"
-- refer: https://vi.stackexchange.com/questions/21885/save-buffer-before-opening-new-file
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
