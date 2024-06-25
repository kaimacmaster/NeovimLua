local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('loctvl842/monokai-pro.nvim')
Plug('itchyny/lightline.vim')

vim.call('plug#end')

require("monokai-pro").setup({
  transparent_background = true,
  terminal_colors = true,
})

vim.cmd([[colorscheme monokai-pro]])
vim.cmd([[set number]])
vim.cmd([[let g:lightline = {'colorscheme': 'monokaipro'}]])

