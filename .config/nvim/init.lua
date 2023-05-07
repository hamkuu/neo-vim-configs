vim.wo.number = true

require('plugins')

local map = vim.api.nvim_set_keymap

map('n', 'n', [[:NvimTreeToggle<CR>]], {})
