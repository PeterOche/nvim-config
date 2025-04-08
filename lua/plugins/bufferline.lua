return {
  "akinsho/bufferline.nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
      },
    })
  end,
}
