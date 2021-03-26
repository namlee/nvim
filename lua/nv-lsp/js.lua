on_attach = require('nv-lsp/cfg')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local tsserver_on_attach = function(client, bufnr)
  on_attach(client, bufnr)
  client.resolved_capabilities.document_formatting = false
end

require('lspconfig').tsserver.setup { 
  on_attach = tsserver_on_attach;
  capabilities = capabilities;
  -- Use prettier for formatting
  settings = {documentFormatting = false}
}
