vim.wo.number = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.breakindent = true

vim.cmd[[colorscheme tokyonight-moon]]

require('plugins')

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "pylsp" }
})
require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
require('lspconfig').pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 100
        }
      }
    }
  }
}

local map = vim.api.nvim_set_keymap
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
