return {

    {
        "catppuccin/nvim",  -- previous ones (name without nvim): 'folke/tokyonight.nvim', 'Mofiqul/vscode.nvim'
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })

            -- setup must be called before loading
            vim.cmd.colorscheme('catppuccin')
        end
    },

    { 'nvim-treesitter/playground' },

    { 'nvim-tree/nvim-web-devicons' },

    { 'NMAC427/guess-indent.nvim', },

}
