return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        lazygit = { enabled = true },   -- for git stuff
        indent = { enabled = true },    -- for knowing the indent level
        -- scratch = { enabled = true },   -- for having scratch buffers
        bufdelete = { enabled = true }, -- for deleting buffers
        rename = { enabled = true },    -- for renaming files
    },
    keys = {
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
        -- { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
        -- { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
        { "<leader>bdc", function() Snacks.bufdelete() end, desc = "Buffer Delete Current" },
        { "<leader>bdo", function() Snacks.bufdelete.others() end, desc = "Buffer Delete Others" },
        { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File" },
    }
}

