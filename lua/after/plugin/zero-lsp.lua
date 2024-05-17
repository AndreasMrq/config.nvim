local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

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
		'pyright',
		'clangd',
		'omnisharp',
		'lua_ls',
		'marksman',
		'bashls',
		'hls'},
		handlers = {
			lsp_zero.default_setup,
		},
	})

require'lspconfig'.ghdl_ls.setup{}

-- super tab
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  })
})
