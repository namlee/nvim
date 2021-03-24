cfg = require('nv-lsp/cfg')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').tsserver.setup { 
  on_attach = cfg.on_attach;
  capabilities = capabilities
}

