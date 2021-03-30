local on_attach = require('nv-lsp/on_attach')
local capabilities = require('nv-lsp/capabilities')

local rs_cfg = {
  on_attach = tsserver_on_attach;
  capabilities = capabilities;
}

return rs_cfg
