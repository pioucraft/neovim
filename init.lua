-- Add custom paths to Lua's package.path
local config_path = vim.fn.stdpath('config')
package.path = package.path .. ";" .. config_path .. "/?.lua"        -- For files like plugins.lua
package.path = package.path .. ";" .. config_path .. "/?/init.lua"   -- For folders with init.lua



require("nathan.plugins")
vim.o.tabstop = 4      -- Set the number of spaces a tab character represents
vim.o.softtabstop = 4  -- Set the number of spaces to insert when hitting <Tab>
vim.o.shiftwidth = 4    -- Set the number of spaces to use for each step of (auto)indent
vim.o.expandtab = true  -- Use spaces instead of tabs

vim.wo.number = true               -- Show absolute line numbers
vim.wo.relativenumber = true        -- Show relative line numbers


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.opt.clipboard = "unnamedplus" -- use system clipboard as default register
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })  -- Copy
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true, silent = true })  -- Paste

vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', '"_d', { noremap = true, silent = true })

vim.lsp.enable('luals')
vim.lsp.enable("typescript")
vim.lsp.enable("gopls")
vim.lsp.enable("html")

vim.g.sonokai_style = 'andromeda'
vim.cmd("colorscheme sonokai")

require("nathan.after.plugins.autoclose")
require("nathan.after.plugins.telescope")
require("nathan.after.plugins.treesitter")
require("nathan.after.plugins.harpoon")
