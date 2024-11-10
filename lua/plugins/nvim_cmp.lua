return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
            },
            mapping = cmp.mapping.preset.insert({
                ['<Tab>'] = cmp.mapping(function(fallback)
                    local col = vim.fn.col('.') - 1

                    if cmp.visible() then
                        cmp.select_next_item({ behavior = 'select' })
                    elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                        fallback()
                    else
                        cmp.complete()
                    end
                end, { 'i', 's' }),
                ['<Enter>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            }),
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },
        })
    end
}
