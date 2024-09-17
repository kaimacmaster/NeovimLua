local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('loctvl842/monokai-pro.nvim')
Plug('itchyny/lightline.vim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.8' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) 
Plug('edkolev/tmuxline.vim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('github/copilot.vim')

vim.call('plug#end')

-- Set theme
require("monokai-pro").setup({
  transparent_background = true,
  terminal_colors = true,
})

vim.cmd([[colorscheme monokai-pro]])
vim.cmd([[set number]])
vim.cmd([[let g:lightline = {'colorscheme': 'monokaipro'}]])

require("telescope")
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'volar', 'eslint' },
})

-- Setup LSP config for Volar
local lspconfig = require('lspconfig')

lspconfig.volar.setup({
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }, -- Enable for Vue/Nuxt files
})

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  }
})

-- Set keybinds
vim.g.mapleader = ',';
vim.g.maplocalleader = ',';

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

-- System clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>p', '"+p')

-- Move lines up and down with Alt/Opt
vim.keymap.set('n', '<A-Down>', ':m+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', ':m-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Set tab width for the visual appearance of tab characters
vim.opt.tabstop = 2

-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Set the number of spaces a Tab key press inserts
vim.bo.softtabstop = 2

-- Ensure there are always 10 lines in view
vim.opt.scrolloff = 10

vim.opt.ignorecase = true
vim.opt.smartcase = true


