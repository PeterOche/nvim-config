return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "medium", -- can be "hard", "medium", or "soft"
      transparent_mode = false,
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
    })
    vim.cmd.colorscheme("gruvbox")
  end,
} 