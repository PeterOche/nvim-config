return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  config = function()
    local lspconfig = require("lspconfig")
    -- Example: Setup for Python (pyright)
    lspconfig.pyright.setup({})
    -- Example: Setup for JavaScript/TypeScript (tsserver)
    lspconfig.tsserver.setup({})
    -- Add more LSP servers as needed
  end,
}
