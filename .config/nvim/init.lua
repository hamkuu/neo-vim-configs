vim.wo.number = true

vim.g.mapleader = ' '

require('plugins')

local map = vim.api.nvim_set_keymap
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
