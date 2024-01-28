return {
	{ "sainnhe/gruvbox-material" },
	{ "sainnhe/sonokai" },
	{ "sainnhe/edge" },
	{ "lunarvim/horizon.nvim" },
	{ "tomasr/molokai" },
	{ "ayu-theme/ayu-vim" },
	{ "Mofiqul/dracula.nvim" },
	{ "catppuccin/nvim" },
	{ "datsfilipe/min-theme.nvim" },
	{
		"miikanissi/modus-themes.nvim",
		name = "modus",
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
	},
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
		},
		lazy = true,
	},
	{
		"folke/tokyonight.nvim",
		optional = true,
		dependencies = {
			-- toggle theme
			{
				"eliseshaffer/darklight.nvim",
				opts = {
					mode = "colorscheme",
					dark_mode_colorscheme = "tokyonight-storm",
					light_mode_colorscheme = "tokyonight-day",
				},
			},
		},
	},
}
