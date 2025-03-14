-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = false,
    }
  }
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false;
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  --init_options = {
    --preferences = {
      --disableSuggestions = false,
    --}
  --}
}

lspconfig.texlab.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  --init_options = {
    --preferences = {
      --disableSuggestions = false,
    --}
  --}
}
