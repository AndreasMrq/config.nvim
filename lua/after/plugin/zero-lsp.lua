local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

---
-- Replace these language servers
-- with the ones you have installed in your system
---
require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {
		'jedi_language_server',
		'clangd',
		'omnisharp',
		'lua_ls',
		'marksman', 
		'bashls'},
		handlers = {
			lsp_zero.default_setup,
		},
	})

	require'lspconfig'.ghdl_ls.setup{}
