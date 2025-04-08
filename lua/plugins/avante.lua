return {
  { 
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "gemini", -- Tell avante.nvim to use Gemini
      gemini = {
        endpoint = "https://generativelanguage.googleapis.com/v1beta/models", -- Where Gemini’s API is
        model = "gemini-2.5-pro-exp-03-25", -- The Gemini model to use
        timeout = 30000, -- How long to wait for an answer (in milliseconds)
        temperature = 0, -- Controls randomness (0 means less random)
        max_tokens = 8192, -- Maximum length of the answer
      },
    },
    build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-tree/nvim-web-devicons",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = { insert_mode = true },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = { file_types = { "markdown", "Avante" } },
        ft = { "markdown", "Avante" },
      },
    },
  },
} -- Closing bracket for the return table
