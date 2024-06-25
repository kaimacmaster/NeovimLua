local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('loctvl842/monokai-pro.nvim')
Plug('itchyny/lightline.vim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

require("monokai-pro").setup({
  transparent_background = true,
  terminal_colors = true,
})

require("telescope").setup({
  -- add config here  
})

require('lspconfig').volar.setup({
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
})

vim.cmd([[colorscheme monokai-pro]])
vim.cmd([[set number]])
vim.cmd([[let g:lightline = {'colorscheme': 'monokaipro'}]])

