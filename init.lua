require('plugins')
require('remap')
require('setting')
require('after.plugin.telescope')
require('after.plugin.treesitter')
require('after.plugin.harpoon')
require('after.plugin.vim-fugitive')
require('after.plugin.lspconfig')
require'lspconfig'.ghdl_ls.setup{}


vim.cmd('colorscheme rose-pine')
