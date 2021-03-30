require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "javascript", "typescript" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true -- false will disable the whole extension
  },
  indent = {enable = true},
  autotag = {enable = true},
  rainbow = {enable = true},
  context_commentstring = {
    enable = true,
    config = {
      javascriptreact = {
        style_element = '{/*%s*/}'
      }
    }
  },
}

-- Settings for folding
vim.api.nvim_command('set foldmethod=expr')
vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
