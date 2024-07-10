local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('loctvl842/monokai-pro.nvim')
Plug('itchyny/lightline.vim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.8' })
Plug('nvim-lua/plenary.nvim')  -- Add this line to include plenary
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) 

vim.call('plug#end')

require("monokai-pro").setup({
  transparent_background = true,
  terminal_colors = true,
})

require("telescope")

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.cmd([[colorscheme monokai-pro]])
vim.cmd([[set number]])
vim.cmd([[let g:lightline = {'colorscheme': 'monokaipro'}]])


