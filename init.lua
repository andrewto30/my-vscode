-- ~/.config/nvim/init.lua  (Linux/Mac)
-- %LOCALAPPDATA%\nvim\init.lua  (Windows)

if vim.g.vscode then
  local vscode = require("vscode")

  -- sensible defaults
  vim.opt.clipboard = "unnamedplus"
  vim.opt.ignorecase = true
  vim.opt.smartcase = true

  -- leader = space
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  -- select all and copy to system clipboard
  vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all" })
  vim.keymap.set("n", "<leader>Y", 'ggVG"+y', { desc = "Select all and copy" })

  -- <leader>w to save (your one keybind)
  vim.keymap.set("n", "<leader>w", function()
    vscode.action("workbench.action.files.save")
  end)
end
