local on_attach = require('nv-lsp/on_attach')
local capabilities = require('nv-lsp/capabilities')

local tsserver_on_attach = function(client, bufnr)
  on_attach(client, bufnr)
  client.resolved_capabilities.document_formatting = false
end

local tsserver_cfg = {
  on_attach = tsserver_on_attach;
  capabilities = capabilities;
  -- Use prettier for formatting
  settings = {documentFormatting = false}
}

return tsserver_cfg
