return {
    'nvimdev/dashboard-nvim',
    lazy = false,
    event = 'VimEnter',
    config = function()
        local db = require("dashboard")

        -- Custom header
        db.custom_header = {
            "      _   _      _ _         ",
            "     | | | | ___| | | ___    ",
            "     | |_| |/ _ \\ | |/ _ \\   ",
            "     |  _  |  __/ | | (_) |  ",
            "     |_| |_|\\___|_|_|\\___/   ",
            "",
            " Welcome to Neovim! ",
        }

        -- Center menu with actions
        db.custom_center = {
            { icon = "  ", desc = "New file                  ", action = "enew" },
            { icon = "  ", desc = "Find file                 ", action = "Telescope find_files" },
            { icon = "  ", desc = "Recent files              ", action = "Telescope oldfiles" },
            { icon = "  ", desc = "Quit Neovim               ", action = "qa" },
        }

        -- Optional footer
        db.custom_footer = { "Neovim configured with dashboard-nvim" }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
