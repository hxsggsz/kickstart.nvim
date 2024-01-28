return {
	{ "f-person/git-blame.nvim" },
	{ "prisma/vim-prisma" },
	{ "christoomey/vim-tmux-navigator" },
	{ "mg979/vim-visual-multi" },
	{ "editorconfig/editorconfig-vim" },
	{ "tpope/vim-repeat" },
	{
		"echasnovski/mini.bufremove",
		keys = {
			{
				"<S-d>",
				function()
					local bd = require("mini.bufremove").delete
					if vim.bo.modified then
						local choice = vim.fn.confirm(
							("Save changes to %q?"):format(vim.fn.bufname()),
							"&Yes\n&No\n&Cancel")
						if choice == 1 then -- Yes
							vim.cmd.write()
							bd(0)
						elseif choice == 2 then -- No
							bd(0, true)
						end
					else
						bd(0)
					end
				end,
				desc = "Delete Buffer",
			},
			-- stylua: ignore
			{ "<S-d>", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
		},
	},
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
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {
				respect_buf_cwd = true,
				view = {
					side = "right",
				},
				renderer = {
					full_name = true,
				},
				actions = {
					change_dir = {
						global = true,
					},
				},
			}
		end,
	},
}
