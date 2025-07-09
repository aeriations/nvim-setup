require('telescope').setup({
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
  },
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>sf', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Spacek>sg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>sh', builtin.help_tags, {})
