-- Global neovim dotfiles for configuring exactly your Neovim
--
-- User settings
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp.init"
require "user.abbreviations"

-- Set Theme
vim.cmd("colorscheme gruvbox")
