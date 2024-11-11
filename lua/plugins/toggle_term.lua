return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]], -- Default keybinding to open a floating terminal
            direction = 'float', -- Can be set to 'horizontal', 'vertical', or 'tab'
            float_opts = {
                border = "curved",
            },
        })
    end
}
