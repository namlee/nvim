on_attach = require('nvim-lsp/cfg')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').tsserver.setup { 
  on_attach = on_attach;
  capabilities = capabilities
}
