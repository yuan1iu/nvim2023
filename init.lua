-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true         -- shows absolute line number on cursor line (when relative number is on)
vim.opt.termguicolors = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- tabs & indentation
vim.opt.tabstop = 2                    -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2                 -- 2 spaces for indent width
vim.opt.expandtab = true               -- expand tab to spaces
vim.opt.autoindent = true              -- copy indent from current line when starting new one
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

vim.opt.scrolloff = 8     -- padding between cursor and top/bottom of window
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- LAZY Plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

--require("lazy").setup("lazys")
require("lazy").setup({
  require("lazys.kanagawa"),
  require("lazys.treesitter"),
  require("lazys.telescope"),
  require("lazys.nvim-tree"),
  "bluz71/vim-nightfly-guicolors",
  { 'folke/which-key.nvim', opts = {} },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = "onedark",
      }
    },
  },
  -- autocompletion
  require("lazys.cmp"),
  require("lazys.lsp")
})
--require("plugins")
require("mapping")
--require("configs.bufferline")
--require("configs.lualine")
--require("configs.telescope")
--require("configs.treesitter")
--require("configs.cmp2")
--require("configs.lsp.mason")
--require("configs.lsp.lspsaga")
--require("configs.lsp.lspconfig")
--require("configs.lsp.null-ls")
--require("configs.nvim-tree")
--require("configs.gitsigns")


--vim.cmd("colorscheme nightfly")
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>fe', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
