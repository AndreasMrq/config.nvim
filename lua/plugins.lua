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

require("lazy").setup(
{
	{'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { {'nvim-lua/plenary.nvim'} }
},
{
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate'
},
{ 'rose-pine/neovim', as = 'rose-pine' },
{ 'martinsione/darkplus.nvim', as = 'darkplus' },
{
	'ThePrimeagen/harpoon',
	dependencies = {{ 'nvim-lua/plenary.nvim'}}
},
{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	dependencies = {
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},
	}
},

	})

