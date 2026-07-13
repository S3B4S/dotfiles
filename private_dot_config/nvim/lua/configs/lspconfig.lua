require("nvchad.configs.lspconfig").defaults()

local servers = { "ts_ls", "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
