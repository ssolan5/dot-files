-- Bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim

require("lazy").setup({
  spec = {
    -- add your plugins here
    { import = "plugins"},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "nightfox" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


-- setup system clipboard
vim.opt.clipboard = 'unnamedplus'

-- setup keybindings for fzf-lua
vim.api.nvim_set_keymap("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep_glob()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})

-- setup treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed={
		"python","typescript","javascript","html","java","latex"
	},
	sync_install=false,
	highlight= { enable = true },
	indent= { enable = true },

})

-- setup symbolsoutline
require("symbols-outline").setup()


-- TODO: setup leetcode neovim plugin so I can solve leetcode problems with no distractions on the internet 
-- apparently the leetcode neovim plugin signs in directly to the leetcode website and allows one to have a neovim interface 
-- to the leetcode interview prep coding puzzles website :] 



-- setup mini.icons 
require("mini.icons").setup()

-- setup lualine 
require("lualine").setup()

-- setup nvim-autopairs
require("nvim-autopairs").setup()

-- setup colorscheme as nightfox 
vim.cmd("colorscheme nightfox")
