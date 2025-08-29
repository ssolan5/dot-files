return{
	"nvim-treesitter/nvim-treesitter",
	build=":TSUpdate",
	config = function()
	
	   local configs = require("nvim-treesitter.configs")
	   
	   config.setup({
		ensure-installed = {
			"c","lua","python","typescript","html","java","javascript","vim","vimdoc"
		},
		sync_install=false,
		highlight= { enable=true },
		indent = { enable=true },
	   })

	end
}
