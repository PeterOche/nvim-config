return {
  "folke/trouble.nvim",
  event = "BufReadPre",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("trouble").setup()
  end,
}
