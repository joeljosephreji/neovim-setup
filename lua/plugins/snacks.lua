return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        lazygit = { enabled = true },   -- for git stuff
        indent = { enabled = true },    -- for knowing the indent level
    },
    keys = {
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    }
}

