-- Leader key
vim.g.mapleader = " " -- Space as leader key
vim.g.maplocalleader = "," -- Optional local leader for buffer-specific mappings

-- Basic settings
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true -- Highlight the current line
vim.opt.cursorcolumn = true -- Highlight the current column
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load lazy.nvim with plugins from the plugins/ directory
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
})

-- Keybindings (general and plugin-specific)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Grep in files" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>ls", ":Telescope lsp_document_symbols<CR>", { desc = "LSP document symbols" })
vim.keymap.set("n", "<leader>lw", ":Telescope lsp_workspace_symbols<CR>", { desc = "LSP workspace symbols" })
vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add file to Harpoon" })
vim.keymap.set("n", "<leader>hm", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon menu" })
vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon file 1" })
vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon file 2" })
vim.keymap.set("n", "<leader>aa", ":AvanteAsk<CR>", { desc = "Ask Avante a question" })
vim.keymap.set("n", "<leader>ar", ":AvanteAsk How do I refactor this code?<CR>", { desc = "Ask Avante to refactor" })
vim.keymap.set("n", "<leader>ad", ":AvanteAsk Debug this code for me<CR>", { desc = "Ask Avante to debug" })
vim.keymap.set("v", "<leader>ae", ":AvanteEdit<CR>", { desc = "Edit selected code with Avante" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Git blame line" })
vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "Git diff" })
vim.keymap.set("n", "<leader>xx", ":TroubleToggle<CR>", { desc = "Toggle Trouble diagnostics" })
vim.keymap.set("n", "<leader>xw", ":Trouble workspace_diagnostics<CR>", { desc = "Workspace diagnostics" })
vim.keymap.set("n", "<leader>xd", ":Trouble document_diagnostics<CR>", { desc = "Document diagnostics" })

-- Load colorscheme
require("plugins.colorscheme")

