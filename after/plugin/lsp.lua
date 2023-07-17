local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<Tab>'] = cmp.mapping.confirm({select = true}),
  }
})
lsp.setup()
