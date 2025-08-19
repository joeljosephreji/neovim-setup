return {
	"folke/lazydev.nvim", -- For neovim API stuff
	ft = "lua",
	opts = {
		library = {
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	},
}
