vim.g.mapleader = " "
vim.g.maplocalleader = ' '

vim.wo.relativenumber = true
vim.wo.number = true

vim.g.have_nerd_font = true
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
-- vim.opt.breakindent = true

-- Indent settings
vim.opt.tabstop=4
vim.opt.softtabstop=-1
vim.opt.shiftwidth=0
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
--
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
--
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
--
-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('textyankpost', {
  desc = 'highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
