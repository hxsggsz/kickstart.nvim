return {
	{ "f-person/git-blame.nvim" },
	{ "prisma/vim-prisma" },
	{ "christoomey/vim-tmux-navigator" },
	{ "mg979/vim-visual-multi" },
	{ "editorconfig/editorconfig-vim" },
	{ "tpope/vim-repeat" },
	{
		'smoka7/hop.nvim',
		version = "*",
		opts = {},
	},
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},

	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup()
		end
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require('nvim-highlight-colors').setup()
		end
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			{ "<tab>",   "<Cmd>BufferLineMoveNext<CR>", desc = "Next tab" },
			{ "<S-tab>", "<Cmd>BufferLineMovePrev<CR>", desc = "Prev tab" },
		},
		opts = {
			options = {
				separator_style = "slant",
			},
		},
	},
	{
		"echasnovski/mini.hipatterns",
		event = "BufReadPre",
		opts = {
			highlighters = {
				hsl_color = {
					pattern = "hsl%(%d+,? %d+,? %d+%)",
					group = function(_, match)
						local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
						h, s, l = tonumber(h), tonumber(s), tonumber(l)
						local hex_color = utils.hslToHex(h, s, l)
						return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
					end,
				},
			},
		},
	},
}
