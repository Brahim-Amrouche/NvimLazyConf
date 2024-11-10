return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    priority = 1000,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        require("nvim-web-devicons").setup()

        -- OR setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
    end
}
