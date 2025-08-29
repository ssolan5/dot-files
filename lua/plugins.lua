return{

	"EdenEast/nightfox.nvim",
	"nvim-tree/nvim-web-devicons",
	"ibhagwan/fzf-lua",
	'nvim-treesitter/nvim-treesitter',
	'echasnovski/mini.nvim',
	'MeanderingProgrammer/render-markdown.nvim',
	'nvim-lualine/lualine.nvim',
	"lukas-reineke/indent-blankline.nvim",
	'simrat39/symbols-outline.nvim',
	'neovim/nvim-lspconfig',
	'windwp/nvim-autopairs',
	{'kawre/leetcode.nvim',
		build = ":TSUpdate html",
		dependencies = {
			'MunifTanjim/nui.nvim',
		}
	}
}
