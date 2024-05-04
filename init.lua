-- Package Manger
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = { 
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Includes
require("options")
require("keymaps")
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "javascript", "c", "cpp", "rust"},
    highlight = { enable = true },
    indent = { enable = true },
})
