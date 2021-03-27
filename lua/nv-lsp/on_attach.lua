local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- As I know this config will not impact our completion
  -- coz we'll use `nvim-compe` for completion
  -- not omnicomplete default by vim
  -- so I turn off this config
  --buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- use LspSaga hover doc instead
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  -- use LspSaga signature help instead
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  
  -- I don't see the value from these configs
  -- turn on later when it's necessary
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  
  -- use LspSaga rename instead
  -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  
  -- use LspSaga async finder instead
  -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  
  -- use LspSaga show/jump diagnostics
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- LspSaga
  -- find definitions & references
  buf_set_keymap('n', '<leader>gr', ':Lspsaga lsp_finder<CR>', opts)
  -- code action
  buf_set_keymap('n', '<leader>ga', ':Lspsaga code_action<CR>', opts)
  -- hover doc
  buf_set_keymap('n', '<leader>gh', ':Lspsaga hover_doc<CR>', opts)
  -- smart scroll up/down
  buf_set_keymap('n', '<C-f>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', opts)
  buf_set_keymap('n', '<C-b>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', opts)
  -- signature help
  buf_set_keymap('n', '<leader>gs', ':Lspsaga signature_help<CR>', opts)
  -- rename
  -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
  buf_set_keymap('n', '<leader>grn', ':Lspsaga rename<CR>', opts)
  -- preview definition
  buf_set_keymap('n', '<leader>gp', ':Lspsaga preview_definition<CR>', opts)
  -- show diagnostic
  buf_set_keymap('n', '<leader>ge', ':Lspsaga show_line_diagnostics<CR>', opts)
  -- jump diagnostic
  buf_set_keymap('n', '<C-n>', ':Lspsaga diagnostic_jump_next<CR>', opts)
  buf_set_keymap('n', '<C-p>', ':Lspsaga diagnostic_jump_prev<CR>', opts)


  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      augroup lsp_document_highlight
      autocmd! * <buffer>
      autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

return on_attach